function s = addnaka(s)
%ADDNAKA Add the Nakagami distribution.

%   Copyright 1993-2012 The MathWorks, Inc.


j = length(s) + 1;
s(j).name = getString(message('stats:dfittool:NameNakagami'));
s(j).code = 'nakagami';
s(j).pnames = {'mu' 'omega'};
s(j).pdescription = {'shape' 'scale'};
s(j).prequired = [false false];
s(j).fitfunc = @nakafit;
s(j).likefunc = @nakalike;
s(j).cdffunc = @nakacdf;
s(j).pdffunc = @nakapdf;
s(j).invfunc = @nakainv;
s(j).statfunc = @nakastat;
s(j).randfunc = @nakarnd;
s(j).checkparam = @(p) all(p>0);
s(j).cifunc = @(p,cv,a,x,c,f) statparamci(p,cv,a);
s(j).loginvfunc = [];
s(j).logcdffunc = [];
s(j).hasconfbounds = false;
s(j).censoring = true;
s(j).paramvec = true;
s(j).support = [0 Inf];
s(j).closedbound = [false false];
s(j).iscontinuous = true;
s(j).islocscale = false;
s(j).uselogpp = false;
s(j).optimopts = true;
s(j).supportfunc = [];

% ==== Nakagami distribution functions ====

% these distribution functions do not yet handle arrays of parameters

function y = nakapdf(x, mu, omega)
%NAKAPDF Nakagami probability density function (pdf).
mu(mu <= 0) = NaN;
omega(omega <= 0) = NaN;

x(x<0) = 0;
% equivalent to y = 2.*x .* gampdf(x.^2, mu, omega./mu), but the version here
% puts all the x terms into gampdf, so Inf*0, etc. is handled there.
y = 2.*sqrt(omega./mu).*exp(gammaln(mu+.5) - gammaln(mu)) .* gampdf(x.^2, mu+.5, omega./mu);


function p = nakacdf(x, mu, omega)
%NAKACDF Nakagami cumulative distribution function (cdf).
mu(mu <= 0) = NaN;
omega(omega <= 0) = NaN;

x(x<0) = 0;
p = gamcdf(x.^2, mu, omega./mu);


function x = nakainv(p, mu, omega)
%NAKAINV Inverse of the Nakagami cumulative distribution function (cdf).
mu(mu <= 0) = NaN;
omega(omega <= 0) = NaN;

x = sqrt(gaminv(p,mu,omega./mu));


function r = nakarnd(mu, omega, varargin)
%NAKARND Random arrays from the Nakagami distribution.
mu(mu <= 0) = NaN;
omega(omega <= 0) = NaN;

[err, sizeOut] = statsizechk(2,mu,omega,varargin{:});
if err > 0
    error(message('stats:nakarnd:InconsistentSizes'));
end

r = sqrt(gamrnd(mu,omega./mu,sizeOut));


function [m,v] = nakastat(mu, omega)
%NAKASTAT Mean and variance for the Nakagami distribution.
mu(mu <= 0) = NaN;
omega(omega <= 0) = NaN;

gamratio = exp(gammaln(mu+.5) - gammaln(mu));
m = gamratio .* sqrt(omega./mu);
v = omega .* (1 - gamratio.^2 ./ mu);


function [nlogL,acov] = nakalike(params,data,cens,freq)
%NAKALIKE Negative log-likelihood for the Nakagami distribution.
if nargin < 4 || isempty(freq), freq = ones(size(data)); end
if nargin < 3 || isempty(cens), cens = zeros(size(data)); end

nlogL = naka_nloglf(params, data, cens, freq);
if nargout > 1
    acov = mlecov(params, data, 'nloglf',@naka_nloglf, 'cens',cens, 'freq',freq);
end


% ==== Nakagami fitting functions ====

function [phat,pci] = nakafit(x,alpha,cens,freq,opts)
%NAKAFIT Parameter estimates and confidence intervals for Nakagami data.

if nargin < 2 || isempty(alpha), alpha = .05; end
if nargin < 3 || isempty(cens), cens = zeros(size(x)); end
if nargin < 4 || isempty(freq), freq = ones(size(x)); end
if nargin < 5, opts = []; end

if any(x <= 0)
    error(message('stats:nakafit:BadData'));
end

phat = gamfit(x.^2,alpha,cens,freq,opts);
phat(2) = phat(1).*phat(2); % (a,b) -> (mu,omega)
if nargout > 1
    acov = mlecov(phat, x, 'nloglf',@naka_nloglf, 'cens',cens, 'freq',freq);
    probs = [alpha/2; 1-alpha/2];
    se = sqrt(diag(acov))';
    pci = norminv(repmat(probs,1,numel(phat)), [phat; phat], [se; se]);
    % CI on the log scale for omega?
end


function [nll,ngrad] = naka_nloglf(parms, x, cens, freq)
%NAKA_NLOGLF Objective function for Nakagami maximum likelihood.

% do all the calculations in terms of the gamma dist'n
a = parms(1);
b = parms(2)./parms(1); % (mu,omega) -> (a,b)
loggama = gammaln(a);
logb = log(b);

xsq = x.^2;
z = xsq ./ b;
logz = log(z);
L = (a-1).*logz - z - loggama - logb + log(2.*x);
ncen = sum(freq.*cens);
if ncen > 0
    cen = (cens == 1);
    zcen = z(cen);
    if nargout == 1
        Scen = gammainc(zcen,a,'upper');
    else
        [dScen,Scen] = dgammainc(zcen,a,'upper');
    end
    L(cen) = log(Scen);
end
nll = -sum(freq .* L);

if nargout > 1
    dL1 = logz - psi(a);
    dL2 = (z - a)./b;
    if ncen > 0
        dL1(cen) = dScen ./ Scen;
        dL2(cen) = exp(a.*logz(cen) - logb - zcen - loggama) ./ Scen;
    end
    ngrad = -[sum(freq .* dL1) sum(freq .* dL2)];

    % transform back to Nakagami parameters
    ngrad = ngrad * [1 0; -b./a 1./a]; % (a,b) -> (mu,omega)
end
