function [logL, avar] = weiblike(params,data)
%WEIBLIKE Obsolete function
%
%   Use WBLLIKE in place of WEIBLIKE.

%Old help text follows.
%
%WEIBLIKE Weibull log-likelihood function.
%   L = WEIBLIKE(params,data) returns the Weibull log-likelihood with 
%   parameters PARAMS(1) = A and PARAMS(2) = B given DATA.
%
%   [LOGL, AVAR] = WEIBLIKE(PARAMS,DATA) adds the inverse of Fisher's
%   information matrix, AVAR.  If the input parameter values in PARAMS
%   are the maximum likelihood estimates, the diagonal elements of AVAR
%   are their asymptotic variances.  AVAR is based on the observed
%   Fisher's information, not the expected information.
%
%   WEIBLIKE is a utility function for maximum likelihood estimation. 
%
%   See also BETALIKE, GAMLIKE, MLE, NORMLIKE, WEIBFIT, WEIBPLOT. 

%   References:
%      [1] J. K. Patel, C. H. Kapadia, and D. B. Owen, "Handbook
%      of Statistical Distributions", Marcel-Dekker, 1976.

%   Copyright 1993-2004 The MathWorks, Inc. 



if nargin < 2, 
    error(message('stats:weiblike:TooFewInputs')); 
end

[n, m] = size(data);

if nargout == 2 & max(m,n) == 1
    error(message('stats:weiblike:VarianceNotAvailable'));
end

if n == 1
   data = data';
   n = m;
end

a = params(1);
b = params(2);

a = a(ones(n,1),:);

b = params(2);
b = b(ones(n,1),:);

x = weibpdf(data,a,b)+eps;

logL = -sum(log(x));

if nargout == 2
  delta = sqrt(eps);
  xplus = weibpdf([data data],[a+delta a],[b b+delta])+eps;
  J = zeros(n,2);
  J = (log(xplus) - log([x x]))./delta;
  [Q,R]= qr(J,0);
  Rinv = R\eye(2);
  avar = Rinv*Rinv';
end
