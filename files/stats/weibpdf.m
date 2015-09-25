function y = weibpdf(x,a,b)
%WEIBPDF Obsolete function
%
%   Use WBLPDF in place of WEIBPDF.

%Old help text follows.
%
%WEIBPDF Weibull probability density function (pdf).
%   Y = WEIBPDF(X,A,B) returns the Weibull pdf with parameters
%   A and B at the values in X.
%
%   The size of P is the common size of the input arguments. A scalar input
%   functions as a constant matrix of the same size as the other inputs.    
%
%   Some references refer to the Weibull distribution with
%   a single parameter, this corresponds to WEIBPDF with A = 1.

%   References:
%      [1] J. K. Patel, C. H. Kapadia, and D. B. Owen, "Handbook
%      of Statistical Distributions", Marcel-Dekker, 1976.

%   Copyright 1993-2004 The MathWorks, Inc. 


if nargin < 3, 
    error(message('stats:weibpdf:TooFewInputs')); 
end

[errorcode x a b] = distchck(3,x,a,b);

if errorcode > 0
    error(message('stats:weibpdf:InputSizeMismatch'));
end

y = zeros(size(x));

y(a <= 0 | b <= 0) = NaN;

k = find(x > 0 & a > 0 & b > 0);
if any(k),
    y(k) = a(k) .* b(k) .* x(k) .^ (b(k) - 1) .* exp(-a(k) .* x(k) .^ b(k));
end

% Special case for asymptote.
y(x == 0 & b < 1) = Inf;

% Special case when Weibull is the same as exponential. 
k2 = find(x == 0 & b == 1);
if any(k2)
   y(k2) = a(k2) .* exp(-a(k2) .* x(k2));
end
