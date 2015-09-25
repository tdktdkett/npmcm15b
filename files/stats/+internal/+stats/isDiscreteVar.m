function tf = isDiscreteVar(v)
% isDiscreteVar Variable is most naturally treated as discrete.
%    TF = isDiscreteVar(X) returns TRUE if X is categorical, a cell array
%    of strings, logical, or a character array.


%   Copyright 2011 The MathWorks, Inc.

tf = (isa(v,'categorical') || iscellstr(v) || islogical(v) || ischar(v));

