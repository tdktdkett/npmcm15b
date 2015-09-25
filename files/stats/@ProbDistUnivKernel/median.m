function m=median(obj)
%MEDIAN Median of distribution.
%    M=MEDIAN(PD) returns the median M for the probability
%    distribution PD.
%
%    See alsoc PROBDISTUNIVKERNEL, MEDIAN.

%   Copyright 2008-2009 The MathWorks, Inc.


m = icdf(obj,0.5);
