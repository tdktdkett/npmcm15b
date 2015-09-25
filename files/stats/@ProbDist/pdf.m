function y=pdf(obj,x)
%ProbDist/PDF Probability density function.
%    Y = PDF(PD,X) returns an array Y containing the probability density
%    function (PDF) for the ProbDist object PD, evaluated at values in X.
%
%    See also ProbDist, PDF.

%   Copyright 2008 The MathWorks, Inc.


% Check for valid input
if nargin ~= 2
    error(message('stats:ProbDist:pdf:TooFewInputs'));
end

if isempty(obj.pdffunc)
    error(message('stats:ProbDist:pdf:Undefined'));
else
    y = obj.pdffunc(x);
end
