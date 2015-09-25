function s=std(obj)
%STD Standard deviation of distribution.
%    V=STD(PD) returns the standard deviation S for the probability
%    distribution PD.
%
%    See also ProbDist, ProbDistUnivParam, STD.

%   Copyright 2008-2009 The MathWorks, Inc.


s = sqrt(var(obj));
