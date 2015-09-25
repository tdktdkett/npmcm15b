function y=cdf(obj,x)
%ProbDist/CDF Cumulative distribution function.
%    Y = CDF(PD,X) returns an array Y containing the cumulative
%    distribution function (CDF) for the ProbDist object PD, evaluated at
%    values in X.
%
%    See also ProbDist, CDF.

%   Copyright 2008 The MathWorks, Inc.


% Check for valid input
if nargin ~= 2
    error(message('stats:ProbDist:cdf:TooFewInputs'));
end

if isempty(obj.cdffunc)
    error(message('stats:ProbDist:cdf:Undefined'));
else
    y = obj.cdffunc(x);
end
