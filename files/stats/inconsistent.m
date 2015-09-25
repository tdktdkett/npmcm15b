function Y = inconsistent(Z,depth)
%INCONSISTENT Inconsistent values of a cluster tree.
%   Y = INCONSISTENT(Z) computes the inconsistent value of each non-leaf
%   node in the hierarchical cluster tree Z.  Z is a (M-1)-by-3 matrix
%   generated by the function LINKAGE.  Each inconsistent value is a
%   measure of separation between the two clusters whose merge is
%   represented by that node, compared to the separation between
%   subclusters merged within those clusters.
%
%   Y = INCONSISTENT(Z, DEPTH) computes inconsistent values by looking
%   to a depth DEPTH below each node.
%
%   Y is a (M-1)-by-4 matrix, with rows corresponding to each of the
%   non-leaf nodes represented in Z.  INCONSISTENT computes the
%   inconsistent value for node (M+i) using S_i, the set of nodes less than
%   DEPTH branches below node (M+i), excluding any leaf nodes.  Then
%
%      Y(i,1) = mean(Z(S_i,3)), the mean height of nodes in S_i
%      Y(i,2) = std(Z(S_i,3)), the standard deviation of node heights in S_i
%      Y(i,3) = length(S_i), the number of nodes in S_i
%      Y(i,4) = (Z(i,3) - Y(i,1))/Y(i,2), the inconsistent value
%
%   The default value for DEPTH is 2.
%
%   See also PDIST, LINKAGE, COPHENET, DENDROGRAM, CLUSTER, CLUSTERDATA.

%   References:
%      [1] Jain, A.K. and R.C. Dubes (1988) Algorithms for Clustering Data,
%          Prentice Hall, section 3.3.6, pp. 121-122.
%      [2] Zahn, C.T. (1971), "Graph-theoretical methods for detecting and
%          describing Gestalt clusters", IEEE Transactions on Computers,
%          C-20(1):68-86. 

%   Copyright 1993-2007 The MathWorks, Inc.


if nargin < 2, depth = 2; end

m = size(Z,1);

Y = zeros(m,4);

for k = 1:m
   s = zeros(4,1);
   s = tracetree(Z, s, k, depth);
   Y(k,1) = s(1)/s(3); % average edge length 
   V = (s(2) - (s(1)*s(1))/s(3))/(s(3)-(s(3)~=1));
   Y(k,2) = sqrt(max(0,V)); % standard deviation, avoid roundoff to neg number
   Y(k,3) = s(3); % number of edges 
   if Y(k,2) > 0
      Y(k,4) = (Z(k,3) - Y(k,1))/Y(k,2);
   else 
      Y(k,4) = 0;  
   end
end

function s = tracetree(Z,s,k,depth)
% iterative function to search down the tree.
m = size(Z,1)+1;
klist = zeros(m,1);
klist(1) = k;
dlist(1) = depth;
topk = 1;
currk = 1;
while(currk <= topk)
   k = klist(currk);
   depth = dlist(currk);
   s(1) = s(1) + Z(k,3); % sum of the edge lengths so far
   s(2) = s(2) + Z(k,3)*Z(k,3); % sum of the square of the edge length 
   s(3) = s(3) + 1; % number of the edges so far 

   if depth > 1 % depth is greater than 0, need to go down further 
      for i = Z(k,1:2);   % left and right subtree indices
         if i > m % node i is not a leaf, it has subtrees 
            topk = topk+1;
            klist(topk) = i-m;
            dlist(topk) = depth-1;
         end
      end
   end
   currk = currk+1;
end