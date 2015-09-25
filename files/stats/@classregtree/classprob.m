function p=classprob(t,j)
%CLASSPROB Class probabilities for tree nodes.
%   P=CLASSPROB(T) returns an N-by-M array P of class probabilities for the
%   nodes in the classification tree T, where N is the number of nodes
%   and M is the number of classes.  For any node number K, the class
%   probabilities P(K,:) are the estimated probabilities for each class
%   for a point satisfying the conditions for node K.
%
%   P=CLASSPROB(T,J) takes an array J of node numbers and returns the 
%   class probabilities for the specified nodes.
%
%   See also CLASSREGTREE, CLASSREGTREE/NUMNODES.

%   Copyright 2006-2007 The MathWorks, Inc. 


if isequal(t.method,'regression')
    error(message('stats:classregtree:classprob:NotClassification'));
end
if nargin>=2 && ~validatenodes(t,j)
    error(message('stats:classregtree:classprob:InvalidNode'));
end

if nargin<2
    p = t.classprob;
else
    p = t.classprob(j,:);
end
