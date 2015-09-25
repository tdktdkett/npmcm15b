clear;close all;addpath(genpath(pwd))
data=load('data2/2d.mat');data=data.data';
% W = SimGraph_NearestNeighbors(data',5, 1,0);W=full(W);

n=size(data,1);
W=zeros(n,n);
%W = SimGraph_NearestNeighbors(data',5, 1,0);
dist=sqrt(sum(data.*data,2));
ids=find(dist<10);ids1=find(dist>=10);
figure(1);hold on;
for i=1:n
   for j=1:n
      if(i==j),continue;end
      x1=data(i,1);
      y1=data(i,2);
      x2=data(j,1);
      y2=data(j,2);
      dist1=sqrt(x1^2+y1^2);
      dist2=sqrt(x2^2+y2^2);
      cos_theta=(x1*x2+y1*y2)/(sqrt(x1*x1+y1*y1)*sqrt(x2*x2+y2*y2));
      if sqrt((x1-x2)^2+(y1-y2)^2)<=0.01
          W(i,j)=1;W(j,i)=1;
%           plot(data(:,1),data(:,2),'g*');hold on;
%           plot(data([i,j],1),data([i,j],2),'r*');
      end;
      if cos_theta<-0.8
         if abs(dist1-dist2)/(dist1+dist2)<1/5 
            W(i,j)=1;W(j,i)=1; 
%              plot(data(:,1),data(:,2),'g*');hold on;
%             plot(data([i,j],1),data([i,j],2),'r*');
         end
      end
   end
end
W=sparse(W);
[C, L, U] = SpectralClustering(W, 2, 2);
C=full(C);n=size(C,1);
lb=zeros(n,1);
c1=C(:,1);c2=C(:,2);
c1=logical(c1);c2=logical(c2);
figure(1);hold on;
plot(data(c1,1),data(c1,2),'ro');
plot(data(c2,1),data(c2,2),'go');