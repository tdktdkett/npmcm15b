function y = pdf(name,x,varargin)
%PDF Density function for a specified distribution.
%   Y = PDF(NAME,X,A) returns an array of values of the probability density
%   function for the one-parameter probability distribution specified by NAME
%   with parameter values A, evaluated at the values in X.
%
%   Y = PDF(NAME,X,A,B) or Y = PDF(NAME,X,A,B,C) returns values of the
%   probability density function for a two- or three-parameter probability
%   distribution with parameter values A, B (and C).
%
%   The size of Y is the common size of the input arguments.  A scalar input
%   functions as a constant matrix of the same size as the other inputs.  Each
%   element of Y contains the probability density evaluated at the
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
%   PDF calls many specialized routines that do the calculations.
%
%   See also CDF, ICDF, MLE, RANDOM.

%   Copyright 1993-2006 The MathWorks, Inc.

if nargin<2,
    error(message('stats:pdf:TooFewInputs'));
end

if ~ischar(name),
    error(message('stats:pdf:BadDistribution'));
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
    y = chi2pdf(x,a);
elseif strcmpi(name,'f'),
    y = fpdf(x,a,b);
elseif strcmpi(name,'geo') || strcmpi(name,'Geometric'),
    y = geopdf(x,a);
elseif strcmpi(name,'hyge') || strcmpi(name,'Hypergeometric'),
    y = hygepdf(x,a,b,c);
elseif strcmpi(name,'ncf') || strcmpi(name,'Noncentral F'),
    y = ncfpdf(x,a,b,c);
elseif strcmpi(name,'nct') || strcmpi(name,'Noncentral T'),
    y = nctpdf(x,a,b);
elseif strcmpi(name,'ncx2') || strcmpi(name,'Noncentral Chi-square'),
    y = ncx2pdf(x,a,b);
elseif strcmpi(name,'t'),
    y = tpdf(x,a);
elseif strcmpi(name,'unid') || strcmpi(name,'Discrete Uniform'),
    y = unidpdf(x,a);
else
    spec = dfgetdistributions(name);
    if length(spec)>1
       error(message('stats:pdf:AmbiguousDistName', name));
    elseif isscalar(spec)
        % Distribution is found in the toolbox, so it will have a pdffunc
        % that we can call directly.
       n = length(spec.prequired);
       y = feval(spec.pdffunc,x,varargin{1:min(n,end)});
    else
        % makedist will error if
        % (1) invalid distname
        % (2) pdf has been called with non-scalar parameters, the
        %     distribution class does not support this, and it
        %     issues an error of type 'stats:probdists:ScalarParameter'
        % (3) the constructor for the distribution object fails in
        %     some way other than (2)
        % In the future, we may process (2) to explain it in the
        % special context of this function, but for the present, as
        % in (1) and (3), we let the error ride.
        pd = makedist(name,varargin{:});
        y = pdf(pd,x);
    end
end
