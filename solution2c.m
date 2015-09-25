data=load('./data2/2c.mat');data=data.data';
W = SimGraph_NearestNeighbors(data',8, 1,0);
%   'M' - A d-by-n matrix containing n d-dimensional data points
%   'k' - Number of neighbors
%   'Type' - Type if kNN Graph
%      1 - Normal
%      2 - Mutual
%   'sigma' - Parameter for Gaussian similarity function. Set
%      this to 0 for an unweighted graph. Default is 1.

% w=full(W);
% idx=find(w~=0); nid=randperm(length(idx),1000);
% idx=idx(nid);
% [y1,x1]=ind2sub(size(w),idx);
[C, L, U] = SpectralClustering(W, 2, 1);
C=full(C);n=size(C,1);
lb=zeros(n,1);
c1=C(:,1);c2=C(:,2);
c1=logical(c1);c2=logical(c2);
figure(1);hold on;
plot(data(c1,1),data(c1,2),'ro');
plot(data(c2,1),data(c2,2),'go');