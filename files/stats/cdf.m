function p = cdf(name,x,varargin)
%CDF Cumulative distribution function for a specified distribution.
%   Y = CDF(NAME,X,A) returns an array of values of the cumulative
%   distribution function for the one-parameter probability distribution
%   specified by NAME with parameter values A, evaluated at the values in X.
%
%   Y = CDF(NAME,X,A,B) or Y = CDF(NAME,X,A,B,C) returns values of the
%   cumulative distribution function for a two- or three-parameter probability
%   distribution with parameter values A, B (and C).
%
%   Y = CDF(NAME,X,A,'upper') returns the upper tail probability of the 
%   cumulative distribution function for the one-parameter probability distribution
%   specified by NAME with parameter values A, evaluated at the values in X.
%
%   Y = CDF(NAME,X,A,B,'upper') or Y = CDF(NAME,X,A,B,C,'upper') returns the 
%   upper tail probability of the cumulative distribution function for a two- 
%   or three-parameter probability distribution with parameter values A, B (and C).
%
%   The size of Y is the common size of the input arguments.  A scalar input
%   functions as a constant matrix of the same size as the other inputs.  Each
%   element of Y contains the cumulative distribution evaluated at the
%   corresponding elements of the inputs.
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
%   CDF calls many specialized routines that do the calculations.
%
%   See also ICDF, MLE, PDF, RANDOM.

%   Copyright 1993-2013 The MathWorks, Inc.

if nargin<2, error(message('stats:cdf:TooFewInputs')); end

if ~ischar(name)
   error(message('stats:cdf:BadDistribution'));
end

if ~isempty(varargin) && strcmpi(varargin{end},'upper')
    tail= {'upper'};
    nargin0 = nargin-1;
else
    tail={};
    nargin0 = nargin;
end

if nargin0<5
    a3=0;
else
    a3 = varargin{3};
end
if nargin0<4
    a2=0;
else
    a2 = varargin{2};
end
if nargin0<3
    a1=0;
else
    a1 = varargin{1};
end

if     strcmpi(name,'chi2') || strcmpi(name,'Chisquare'),
    p = chi2cdf(x,a1,tail{:});
elseif strcmpi(name,'f'),
    p = fcdf(x,a1,a2,tail{:});
elseif strcmpi(name,'geo') || strcmpi(name,'Geometric'),
    p = geocdf(x,a1,tail{:});
elseif strcmpi(name,'hyge') || strcmpi(name,'Hypergeometric'),
    p = hygecdf(x,a1,a2,a3,tail{:});
elseif strcmpi(name,'ncf') || strcmpi(name,'Noncentral F'),
    p = ncfcdf(x,a1,a2,a3,tail{:});
elseif strcmpi(name,'nct') || strcmpi(name,'Noncentral T'),
    p = nctcdf(x,a1,a2,tail{:});
elseif strcmpi(name,'ncx2') || strcmpi(name,'Noncentral Chi-square'),
    p = ncx2cdf(x,a1,a2,tail{:});
elseif strcmpi(name,'t'),
    p = tcdf(x,a1,tail{:});
elseif strcmpi(name,'unid') || strcmpi(name,'Discrete Uniform'),
    p = unidcdf(x,a1,tail{:});
else
    spec = dfgetdistributions(name);
    if length(spec)>1
       error(message('stats:pdf:AmbiguousDistName', name));
    elseif isscalar(spec)
        % Distribution is found in the toolbox, so it will have a cdffunc
        % that we can call directly.
        p = feval(spec.cdffunc,x,varargin{:});
    else
        % makedist will error if
        % (1) invalid distname
        % (2) icdf has been called with non-scalar parameters, the
        %     distribution class does not support this, and it
        %     issues an error of type 'stats:probdists:ScalarParameter'
        % (3) the constructor for the distribution object fails in
        %     some way other than (2).  We let the constructor's
        %     error ride.
        % In the future, we may process (2) to explain it in the
        % special context of this function, but for the present, as
        pd = makedist(name,varargin{:});
        p = cdf(pd,x);
    end
end
