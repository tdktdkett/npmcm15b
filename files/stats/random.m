function r = random(name,varargin)
%RANDOM Generate random arrays from a specified distribution.
%   R = RANDOM(NAME,A) returns an array of random numbers chosen from the
%   one-parameter probability distribution specified by NAME with parameter
%   values A.
%
%   R = RANDOM(NAME,A,B) or R = RANDOM(NAME,A,B,C) returns an array of random
%   numbers chosen from a two- or three-parameter probability distribution
%   with parameter values A, B (and C).
%
%   The size of R is the common size of the input arguments.  A scalar input
%   functions as a constant matrix of the same size as the other inputs.
%
%   R = RANDOM(NAME,A,M,N,...) or R = RANDOM(NAME,A,[M,N,...]) returns an
%   M-by-N-by-... array of random numbers for a one-parameter distribution.
%   Similarly, R = RANDOM(NAME,A,B,M,N,...) or R = RANDOM(NAME,A,B,[M,N,...]),
%   and R = RANDOM(NAME,A,B,C,M,N,...) or R = RANDOM(NAME,A,B,C,[M,N,...]),
%   return an M-by-N-by-... array of random numbers for a two- or
%   three-parameter distribution.
%
%
%   NAME can be:
%
%      'beta'  or 'Beta',
%      'bino'  or 'Binomial',
%      'chi2'  or 'Chisquare',
%      'exp'   or 'Exponential',
%      'ev'    or 'Extreme Value',
%      'f'     or 'F',
%      'gam'   or 'Gamma',
%      'gev'   or 'Generalized Extreme Value',
%      'gp'    or 'Generalized Pareto',
%      'geo'   or 'Geometric',
%      'hyge'  or 'Hypergeometric',
%      'logn'  or 'Lognormal',
%      'nbin'  or 'Negative Binomial',
%      'ncf'   or 'Noncentral F',
%      'nct'   or 'Noncentral t',
%      'ncx2'  or 'Noncentral Chi-square',
%      'norm'  or 'Normal',
%      'poiss' or 'Poisson',
%      'rayl'  or 'Rayleigh',
%      't'     or 'T',
%      'unif'  or 'Uniform',
%      'unid'  or 'Discrete Uniform',
%      'wbl'   or 'Weibull'.
%
%   Partial matches are allowed and case is ignored.
%
%   RANDOM calls many specialized routines that do the calculations.
%
%   See also CDF, ICDF, MLE, PDF.

%   Copyright 1993-2011 The MathWorks, Inc.

if ischar(name)
    distNames = {'beta', 'binomial', 'chi-square', 'extreme value', ...
                 'exponential', 'f', 'gamma', 'generalized extreme value', ...
                 'generalized pareto', 'geometric', 'hypergeometric', ...
                 'lognormal', 'negative binomial', 'noncentral f', ...
                 'noncentral t', 'noncentral chi-square', 'normal', 'poisson', ...
                 'rayleigh', 't', 'discrete uniform', 'uniform', 'weibull'};

    i = find(strncmpi(name, distNames, length(name)));
    if numel(i) > 1
        error(message('stats:random:AmbiguousDistribution', name));
    elseif numel(i) == 1
        name = distNames{i};
    else % it may be an abbreviation that doesn't partially match the name
        name = lower(name);
    end
else
    error(message('stats:random:IllegalDistribution'));
end
if nargin>1 && ~all(cellfun(@(x)isnumeric(x),varargin))
    error(message('stats:random:NonNumeric'))
end

% Determine, and call, the appropriate subroutine
probdistName = name;
switch name
case {'chi2', 'chi-square', 'chisquare'}
    r = chi2rnd(varargin{:});
case 'f'
    r = frnd(varargin{:});
case 'geometric'
    r = geornd(varargin{:});
case {'hyge', 'hypergeometric'}
    r = hygernd(varargin{:});
case {'ncf', 'noncentral f'}
    r = ncfrnd(varargin{:});
case {'nct', 'noncentral t'}
    r = nctrnd(varargin{:});
case {'ncx2', 'noncentral chi-square'}
    r = ncx2rnd(varargin{:});
case 't'
    r = trnd(varargin{:});
case {'unid', 'discrete uniform'}
    r = unidrnd(varargin{:});
otherwise
    spec = dfgetdistributions(name);
    if isempty(spec)
        try
            pd = makedist(name);
        catch ME
            % makedist will error if invalid distname: catch and rethrow
            % equivalent error.  If makedist fails for another reason,
            % pass along the error as-is.
            if strcmp(ME.identifier,'stats:ProbDistUnivParam:checkdistname:UnrecognizedName')
                error(message('stats:random:BadDistribution', name));
            else
                rethrow(ME)
            end
        end
        
        if ~isa(pd,'prob.ToolboxParametricDistribution')
            error(message('stats:random:BadDistribution', name));
        end
        
        % Split the input arguments into parameter values and size specifications
        nparam = pd.NumParameters;
        params = varargin(1:nparam);
        sizeargs = varargin(nparam+1:end);
        [err, sizeOut] = statsizechk(nparam,params{:},sizeargs{:});
        if err > 0
            error(message('stats:normrnd:InputSizeMismatch'));
        end
        y = pd.randfunc(params{:},sizeargs{:});
    elseif length(spec)>1
        error(message('stats:random:AmbiguousDistribution', name));
    end
    
    if isempty(spec.randfunc)
        % Compute by inverting the cdf if necessary
        paramArgs = varargin(1:length(spec.pnames));
        sizeArgs = varargin(length(spec.pnames)+1:end);
        u = rand(sizeArgs{:});
        r = feval(spec.invfunc,u,paramArgs{:});
    else
        r = feval(spec.randfunc,varargin{:});
    end
end
