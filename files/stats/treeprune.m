function Tree = treeprune(Tree,varargin)
%TREEPRUNE Obsolete function
%   
%   TREEPRUNE will be removed in a future release. Use CLASSREGTREE/PRUNE instead.
%
%   See also CLASSREGTREE/PRUNE.

%   Copyright 1993-2009 The MathWorks, Inc. 


if isa(Tree,'struct')
    Tree = classregtree(Tree);
end

Tree = prune(Tree,varargin{:});
