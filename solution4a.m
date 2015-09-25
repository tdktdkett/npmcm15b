clear;close all;addpath(genpath(pwd))
data=load('./data4/4a.mat');data=data.data;
n=size(data,2);
SPACE=0.15;
DISTANCE=0.5;

fet=zeros(n,6);
vertex=zeros(n,n,'single');
for i=1:n 
    x1=data(1,i)-SPACE;
    y1=data(2,i)-SPACE;
    z1=data(3,i)-SPACE;
    x2=data(1,i)+SPACE;
    y2=data(2,i)+SPACE;
    z2=data(3,i)+SPACE;
    
    lb1=(data(1,:)>x1);
    lb2=(data(1,:)<x2);
    lb3=(data(2,:)>y1);
    lb4=(data(2,:)<y2);
    lb5=(data(3,:)>z1);
    lb6=(data(3,:)<z2);
    lb=lb1.*lb2.*lb3.*lb4.*lb5.*lb6;
    lb=logical(lb);
    cov_mat=cov(data(:,lb)')*100;
%     fet(i,1)=data(3,i);
    fet(i,1:3)=cov_mat([1 5 9]);
end
[klb]=kmeans(fet,2);
if((sum(fet(klb==1,1))+sum(fet(klb==1,2))+sum(fet(klb==1,3)))>...
   (sum(fet(klb==2,1))+sum(fet(klb==2,2))+sum(fet(klb==2,3))))
    plan_klb=2;
    slope_klb=1;
else
    plan_klb=1;
    slope_klb=2;
end

plain_data=data(:,klb==plan_klb);
m=size(plain_data,2);
vertex=zeros(m,m);
vertex=SimGraph_NearestNeighbors(plain_data,5,1,0.3);
% parfor i=1:m 
%     i
%     P=[plain_data(1,i),plain_data(2,i),plain_data(3,i) ];
%     for j=1:m
%         vertex(i,j)=norm(P-[plain_data(1,j),plain_data(2,j),plain_data(3,j)]);
%         if(vertex(i,j)<DISTANCE)
%             vertex(i,j)=1;
%         else
%             vertex(i,j)=0;
%         end
%     end
% end
vertex1=sparse(vertex);
[C, L, U] = SpectralClustering(vertex1, 2, 1);
C=full(C);n=size(C,1);
lb=zeros(n,1);
c1=C(:,1);c2=C(:,2);
c1=logical(c1);c2=logical(c2);

% ids=find((klb==plan_klb)&(klb2==2));
% klb(ids)=3;
figure(41);
plot3(data(1,klb==slope_klb),data(2,klb==slope_klb),data(3,klb==slope_klb),'r*');hold on;grid on;
plot3(plain_data(1,c1),plain_data(2,c1),plain_data(3,c1),'b*');hold on;grid on;
plot3(plain_data(1,c2),plain_data(2,c2),plain_data(3,c2),'g*');hold on;grid on;