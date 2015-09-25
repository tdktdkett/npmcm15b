function rowlist = candexch(fxcand,nruns,varargin)
%CANDEXCH D-optimal design from candidate set using row exchanges.
%   RLIST = CANDEXCH(C,NROWS) uses a row-exchange algorithm to select a
%   D-optimal design from the candidate set C.  C is an N-by-P matrix
%   containing the values of P model terms at each of N points.  NROWS
%   is the desired number of rows in the design.  RLIST is a vector of
%   length NROWS listing the selected rows.
%
%   The CANDEXCH function selects a starting design X at random, and
%   uses a row-exchange algorithm to iteratively replace rows of X by
%   rows of C in an attempt to improve the determinant of X'*X.
%
%   RLIST = CANDEXCH(C,NROWS,'PARAM1',VALUE1,'PARAM2',VALUE2,...)
%   provides more control over the design generation through a set of
%   parameter/value pairs.  Valid parameters are the following:
%
%      Parameter    Value
%      'display'    Either 'on' or 'off' to control display of
%                   iteration number. (default = 'on' unless 'UseParallel'
%                   is TRUE, in which case default = 'off').
%      'init'       Initial design as an NROWS-by-P matrix (default
%                   is a random subset of the rows of C).
%      'maxiter'    Maximum number of iterations (default = 10).
%      'start'      A matrix of factor settings as an NOBS-by-P matrix
%                   (default empty), specifying a set of NOBS fixed design
%                   points to include in the design.  CANDEXCH finds
%                   NROWS additional rows to add to the 'start' design.
%      'tries'      Number of times to try to generate a design from a
%                   new starting point, using random points for each
%                   try except possibly the first (default 1). 
%      'options'    A struct that contains options specifying whether to
%                   compute multiple tries in parallel, and specifying how
%                   to use random numbers when generating the starting points
%                   for the tries. This argument can be created by a call to 
%                   STATSET. CANDEXCH uses the following fields of the struct:
%                       'UseParallel'
%                       'UseSubstreams'
%                       'Streams'
%                   For information on these fields see PARALLELSTATS.
%                   NOTE: If 'UseParallel' is TRUE and 'UseSubstreams' is FALSE,
%                   then the length of 'Streams' must equal the number of workers 
%                   used by CANDEXCH.  If a parallel pool is already open, this 
%                   will be the size of the parallel pool.  If a parallel pool 
%                   is not already open, then MATLAB may try to open a pool for 
%                   you (depending on your installation and preferences).
%                   To ensure more predictable results, it is best to use 
%                   the PARPOOL command and explicitly create a parallel pool 
%                   prior to invoking CANDEXCH with 'UseParallel' set to TRUE. 
%
%   The ROWEXCH function also generates D-optimal designs using a
%   row-exchange algorithm, but it automatically generates a candidate set
%   that is appropriate for a specified model.  The DAUGMENT function
%   augments a set of fixed design points using a coordinate-exchange
%   algorithm; the 'start' parameter provides the same functionality using
%   the row exchange algorithm.
%
%   Example:  generate a D-optimal design when there is a restriction
%   on the candidate set, so the ROWEXCH function isn't appropriate.
%      F = (fullfact([5 5 5])-1)/4;   % factor settings in unit cube
%      T = sum(F,2)<=1.51;            % find rows matching a restriction
%      F = F(T,:);                    % take only those rows
%      C = [ones(size(F,1),1) F F.^2];% compute model terms including
%                                     % a constant and all squared terms
%      R = candexch(C,12);            % find a D-optimal 12-point subset
%      X = F(R,:);                    % get factor settings
%
%   See also CANDGEN, ROWEXCH, CORDEXCH, DAUGMENT, X2FX, STATSET, PARALLELSTATS,
%   PARPOOL, PARFOR, GCP.

%   Copyright 1993-2013 The MathWorks, Inc. 

if ~(isnumeric(nruns) && isscalar(nruns) && isreal(nruns) && nruns >= 0 ...
        && isequal(nruns,floor(nruns)) && isfinite(nruns))
    error(message('stats:candexch:BadNROWSValue'));
end
                                           
dcutoff = 1 + sqrt(eps(class(fxcand)));                                          

paropt = statset('candexch');
[paropt,~,varargin] = internal.stats.parseArgs({'Options'}, {paropt}, varargin{:});

[useParallel, RNGscheme, poolsz] = ...
    internal.stats.parallel.processParallelAndStreamOptions(paropt, true);

varargin = [varargin {'UseParallel' useParallel}]; 

usePool = useParallel && poolsz>0;                                          

pnames = {'start' 'display'   'init'  'maxiter'  'tries' 'useparallel'};
% In addition to the requested pnames, doptargchk returns the
% 'options' parameter, or an empty variable if not present.
[startdes,dodisp,xinit,maxiter,tries,~] = ...
             doptargcheck(pnames,size(fxcand,2),nruns,varargin{:});

% Make iteration figure or not
quiet = isequal(dodisp,'off');
if ~quiet
    if useParallel
        warning(message('stats:candexch:parallelDisplay'));
        if usePool
            internal.stats.parallel.distributeToPool( ...
                'workerID', num2cell(1:poolsz) );
        end
    else
        [f, settry, setiter] = statdoptdisplay('Row exchange');
    end
end

% Setup for the return values from smartForReduce, which are:
% reductionVar{1}: whether a full-rank design was found (T/F)
% reductionVar{2}: a cell with 3 elements:
%       (1) a metric used to select the best of the trial designs 
%           (we ignore this outside of smartForReduce)
%       (2) the iteration number in a for/parfor loop, used to
%           break ties in a reproducible way, if useSubstreams
%       (3) the rowlist for the best trial design
%           (this is the return value for candexch)
reductionArgument.fh = @reductionOperator;
reductionArgument.iv = {false, {-Inf,Inf,{}}};

nobs = size(startdes,1);

% Generate designs, pick best one
%
reductionVar = internal.stats.parallel.smartForReduce( ...
    tries, @loopBody, useParallel, RNGscheme, reductionArgument);

% Close display window if present
if ~quiet && ~useParallel
    close(f);
end

foundgood = reductionVar{1};
if ~foundgood
    warning(message('stats:candexch:BadFinalDesign'));
end

rowlist = reductionVar{2}{3};

% ----------------
% Nested functions 
% ----------------

% --------------------------------------------
    function [rowlist,logdetX,wasbad] = gen1design(X,nobs,randomstart)
        
        rowlist = zeros(nruns,1);
        iter = 0;
        madeswitch = 1;
        
        F = [];
        [~,R]=qr(X,0);
        
        % Adjust starting design if it is rank deficient, 
        % because the algorithm will not proceed otherwise.
        if rank(R)<size(R,2)
            if ~randomstart
                warning(message('stats:candexch:BadStartingDesign'));
            end
            R = adjustr(R);
            wasbad = 1;
        else
            wasbad = 0;
        end
        logdetX = 2*sum(log(abs(diag(R))));
        
        while madeswitch > 0 && iter < maxiter
            madeswitch = 0;
            iter = iter + 1;
            
            % Update iteration counter.
            if ~quiet && ~useParallel
                setiter(iter);
            end
            
            for row = (nobs+1):(nobs+nruns)
                % Compute determinant factor over whole candidate set 
                % if not done yet
                if isempty(F)
                    F = fxcand/R;
                    dxcand = sum(F.*F, 2);
                end
                
                E = X(row,:)/R;
                dxold = E*E';
                dxswap  = F*E';
                
                dd = (1+dxcand) * (1-dxold) + dxswap.^2;
                
                % Find the maximum change in the determinant.
                [d,idx] = max(dd);
                
                % Switch rows if the maximum change is greater than 1.
                if (d > dcutoff) || (rowlist(row-nobs) == 0)
                    madeswitch = 1;
                    logdetX = log(d) + logdetX;
                    rowlist(row-nobs) = idx;
                    X(row,:) = fxcand(idx,:);
                    [~,R] = qr(X,0);
                    if wasbad
                        if rank(R)<size(R,2)
                            R = adjustr(R);
                        else
                            wasbad = 0;
                        end
                        logdetX = 2*sum(log(abs(diag(R))));
                    end
                    F = [];  % needs re-computing using new R
                end
            end
        end
        
    end %-gen1design

% --------------------------------------------
    function reductionVar = loopBody(iter, S)
        %Print "try" number and worker to screen.
        if ~quiet
            if useParallel
                if usePool
                    labindx = internal.stats.parallel.workerGetValue('workerID');
                else
                    labindx = 1;
                end
                disp(getString(message('stats:candexch:text_WorkerPerformingTry',num2str(labindx),num2str(iter))))
            else
                settry(iter);
            end
        end
        
        if isempty(S)
            s = RandStream.getGlobalStream;
        else
            s = S;
        end
        
        % Pick random starting location if needed
        if isempty(xinit) || iter > 1
            ridx = ceil( size(fxcand,1)*rand(s,nruns,1) );
            X = fxcand(ridx,:);
            randomstart = true;
        else
            X = xinit;
            randomstart = false;
        end
        
        % Add initial set of rows never to change, if any
        if ~isempty(startdes)
            X = [startdes; X];
        end
        
        % Perform computation
        [A, B, bad] = ...
            gen1design(X,nobs,randomstart);
        
        reductionVar = {~bad, {B iter A}};
        
    end %-loopBody

end % of outer function 

% ----------------
% Subfunctions 
% ----------------

% --------------------------------------------
function R = adjustr(R)
%ADJUSTR Adjust R a little bit so it will be non-singular

p = size(R,1);
if p > 1
    diagr = abs(diag(R));
else
    diagr = abs(diag(1));
end
smallval = sqrt(eps)*max(diagr);
t = (diagr < smallval);
if any(t)
   tind = (1:p+1:p^2);
   R(tind(t)) = smallval;
end
end %-adjustr

% --------------------------------------------
function reductionVal = reductionOperator(reductionVal, update)
    reductionVal{1} = reductionVal{1} | update{1};
    reductionVal{2} = internal.stats.parallel.pickLarger(reductionVal{2},update{2});
end %-reductionOperator

