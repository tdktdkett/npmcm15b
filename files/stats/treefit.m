function Tree=treefit(X,y,varargin)
%TREEFIT Obsolete function
%   
%   TREEFIT will be removed in a future release. Use CLASSREGTREE instead.
%
%   See also CLASSREGTREE.

%   Copyright 1993-2007 The MathWorks, Inc. 


Tree = classregtree(X,y,varargin{:});
