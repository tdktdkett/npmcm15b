function [imsource, D, C, F, dsname, ylo, yhi, ylotest, yhitest] = dfviewpreview(outlier, width, height, dsname)
% For use by DFITTOOL


%   Copyright 2003-2011 The MathWorks, Inc.

NONE='(none)';  % not to be translated
o = handle(outlier);
if (nargin < 4)  % from exclude preview; use data set from outlier
    dsname = o.dataset;
end
if isequal(dsname, NONE)
    imsource = dfsectionpreview(outlier, width, height);
    D = [];
    C = [];
    F = [];
else 
    [imsource, D, C, F] = dfviewexcludepreview(outlier, width, height, dsname);
end
ylo = o.YLow;
yhi = o.YHigh;
ylotest = o.YLowLessEqual;
yhitest = o.YHighGreaterEqual;
