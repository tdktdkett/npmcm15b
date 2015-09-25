function x = icdf(name,p,varargin)
%ICDF Inverse cumulative distribution function for a specified distribution.
%   X = ICDF(NAME,P,A) returns an array of values of the inverse cumulative
%   distribution function for the one-parameter probability distribution
%   specified by NAME with parameter values A, evaluated at the probability
%   values in P.
%
%   X = ICDF(NAME,P,A,B) or X = ICDF(NAME,P,A,B,C) returns values of the
%   inverse cumulative distribution function for a two- or three-parameter
%   probability distribution with parameter values A, B (and C).
%
%   The size of X is the common size of the input arguments.  A scalar input
%   functions as a constant matrix of the same size as the other inputs.  Each
%   element of X contains the inverse cumulative distribution evaluated at the
%   corresponding elements of the inputs.
%
%   Values of the inverse cdf are sometimes known as critical values.
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
%   ICDF calls other specialized routines that do the calculations.
%
%   Example:
%       z = icdf('normal',0.1:0.2:0.9,0,1) % returns standard normal values
%       x = icdf('Poisson',0.1:0.2:0.9,1:5) % array inputs
%
%   See also CDF, MLE, PDF, RANDOM.

%   Copyright 1993-2011 The MathWorks, Inc.

if nargin<2
   error(message('stats:icdf:TooFewInputs'));
end
if ~ischar(name)
   error(message('stats:icdf:BadDistribution'));
end

if nargin<5
   c = 0;
else
   c = varargin{3};
end
if nargin<4
   b = 0;
else
   b = varargin{2};
end
if nargin<3
   a = 0;
else
   a = varargin{1};
end

if     strcmpi(name,'chi2') || strcmpi(name,'Chisquare'),
    x = chi2inv(p,a);
elseif strcmpi(name,'f'),
    x = finv(p,a,b);
elseif strcmpi(name,'geo') || strcmpi(name,'Geometric'),
    x = geoinv(p,a);
elseif strcmpi(name,'hyge') || strcmpi(name,'Hypergeometric'),
    x = hygeinv(p,a,b,c);
elseif strcmpi(name,'ncf') || strcmpi(name,'Noncentral F'),
    x = ncfinv(p,a,b,c);
elseif strcmpi(name,'nct') || strcmpi(name,'Noncentral T'),
    x = nctinv(p,a,b);
elseif strcmpi(name,'ncx2') || strcmpi(name,'Noncentral Chi-square'),
    x = ncx2inv(p,a,b);
elseif strcmpi(name,'t'),
    x = tinv(p,a);
elseif strcmpi(name,'unid') || strcmpi(name,'Discrete Uniform'),
    x = unidinv(p,a);
else
    spec = dfgetdistributions(name);
    if length(spec)>1
        error(message('stats:icdf:AmbiguousDistribution', name));
    elseif isscalar(spec)
        % Distribution is found in the toolbox, so it will have an invfunc
        % that we can call directly.
        n = length(spec.prequired);
        x = feval(spec.invfunc,p,varargin{1:min(n,end)});
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
        % in (1) and (3), we let the error ride.
        pd = makedist(name,varargin{:});
        
        % We expect the ProbabilityDistribution to inherit from
        % prob.UnivariateDistribution, which supplies icdf().
        if ~isa(pd,'prob.UnivariateDistribution')
            error(message('stats:icdf:NotUnivariateDistribution',name))
        end
        x = icdf(pd,p);
    end
end
