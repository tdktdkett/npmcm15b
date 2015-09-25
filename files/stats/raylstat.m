function [m,v]= raylstat(b)
%RAYLSTAT Mean and variance for the Rayleigh distribution.
%   [M,V] = RAYLSTAT(B) returns the mean and variance of
%   the Rayleigh distribution with parameter B.
%
%   See also RAYLCDF, RAYLFIT, RAYLINV, RAYLPDF, RAYLRND.

%   Reference:
%      [1]  Evans, Merran, Hastings, Nicholas and Peacock, Brian,
%      "Statistical Distributions, Second Edition", Wiley
%      1993 p. 134-136.

%   Copyright 1993-2004 The MathWorks, Inc. 


if nargin < 1, 
    error(message('stats:raylstat:TooFewInputs')); 
end

m = b * sqrt(pi/2);
v = (2 - pi/2) * b .^ 2;

% Return NaN if B is negative or zero.
k = (b <= 0);
if any(k)
    m(k) = NaN;
    v(k) = NaN;
end
