function [id,nodes,idnames]=treeval(Tree,varargin)
%TREEVAL Obsolete function
%   
%   TREEVAL will be removed in a future release. Use CLASSREGTREE/EVAL instead.
%
%   See also CLASSREGTREE/EVAL.

%   Copyright 1993-2009 The MathWorks, Inc. 

if isa(Tree,'struct')
    Tree = classregtree(Tree);
end

if isequal(Tree.method,'regression')
    [id,nodes] = eval(Tree,varargin{:});
else
    [idnames,nodes,id] = eval(Tree,varargin{:});
end
