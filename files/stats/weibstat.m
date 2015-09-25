function [m,v]= weibstat(a,b);
%WEIBSTAT Obsolete function
%
%   Use WBLSTAT in place of WEIBSTAT.

%Old help text follows.
%

%WEIBSTAT Mean and variance for Weibull distribution.
%   [M,V] = WEIBSTAT(A,B) returns the mean and variance of
%   the Weibull distribution with parameters A and B.
%
%   Some references refer to the Weibull distribution with
%   a single parameter, this corresponds to WEIBSTAT with A = 1.

%   References:
%      [1] J. K. Patel, C. H. Kapadia, and D. B. Owen, "Handbook
%      of Statistical Distributions", Marcel-Dekker, 1976.

%   Copyright 1993-2004 The MathWorks, Inc. 


if nargin < 2,    
    error(message('stats:weibstat:TooFewInputs')); 
end

[errorcode a b] = distchck(2,a,b);

if errorcode > 0
    error(message('stats:weibstat:InputSizeMismatch'));
end

%   Initialize Mean and Variance to zero.
m = zeros(size(a));
v = zeros(size(a));

k1 = (a <= 0 | b <= 0);
if any(k1)
    m(k1) = NaN;
    v(k1) = NaN;
end

k = find(a > 0 & b > 0);
if any(k)
    m(k) =  a(k) .^ (-1 ./ b(k)) .* gamma(1 + (1 ./ b(k)));
    v(k) = a(k) .^ (-2 ./ b(k)) .* gamma(1 + (2 ./ b(k))) - m(k) .^ 2;
end
