function p = weibcdf(x,a,b)
%WEIBCDF Obsolete function
%
%   Use WBLCDF in place of WEIBCDF.

%Old help text follows.
%
%WEIBCDF Weibull cumulative distribution function (cdf).
%   P = WEIBCDF(X,A,B) returns the Weibull cdf with parameters A and B
%   at the values in X.
%
%   The size of P is the common size of the input arguments. A scalar input
%   functions as a constant matrix of the same size as the other inputs.    
%
%   Some references refer to the Weibull distribution with a 
%   single parameter. This corresponds to WEIBCDF with A = 1.

%   References:
%      [1] J. K. Patel, C. H. Kapadia, and D. B. Owen, "Handbook
%      of Statistical Distributions", Marcel-Dekker, 1976.

%   Copyright 1993-2004 The MathWorks, Inc. 


if nargin < 3, 
    error(message('stats:weibcdf:TooFewInputs')); 
end

[errorcode x a b] = distchck(3,x,a,b);

if errorcode > 0
    error(message('stats:weibcdf:InputSizeMismatch'));
end

% Initialize P to zero.
if isa(x,'single')
   p = zeros(size(x),'single');
else
   p = zeros(size(x));
end

y(a <= 0 | b <= 0) = NaN;

% The domain of the weibull distribution is the positive real axis.
k = find(x >= 0 & a > 0 & b > 0);
if any(k),
    p(k) = 1 - exp(-a(k) .* (x(k) .^ b(k)));
end
