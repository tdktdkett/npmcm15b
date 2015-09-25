function v=var(obj)
%VAR Variance of distribution.
%    V=VAR(PD) returns the variance V for the probability
%    distribution PD.
%
%    See also ProbDist, ProbDistUnivParam, VAR.

%   Copyright 2008-2009 The MathWorks, Inc.


[ignore,v] = stats(obj);
