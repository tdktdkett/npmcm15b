clear;close all;addpath(genpath(pwd))
data=load('./data2/2b.mat');data=data.data;
n=size(data,2);
DISTANCE=0.2;
fet=zeros(n,6);
n=size(data,2);  % n= how many in column
Vertex=zeros(n,6);   %create an matrix 

for i=1:n
    x1=data(1,i)-DISTANCE;
    y1=data(2,i)-DISTANCE;
    z1=data(3,i)-DISTANCE;
    x2=data(1,i)+DISTANCE;
    y2=data(2,i)+DISTANCE;
    z2=data(3,i)+DISTANCE;
    lb1=(data(1,:)>x1);
    lb2=(data(1,:)<x2);
    lb3=(data(2,:)>y1);
    lb4=(data(2,:)<y2);
    lb5=(data(3,:)>z1);
    lb6=(data(3,:)<z2);
    lb=lb1.*lb2.*lb3.*lb4.*lb5.*lb6;
    lb=logical(lb);
    cov_mat=cov(data(:,lb)');
    fet(i,:)=cov_mat([1,4,5,7,8,9]);
end
fet(:,4:6)=fet(:,4:6)*10;
[klb]=kmeans(fet,3);
plot3(data(1,klb==1),data(2,klb==1),data(3,klb==1),'r*');hold on;
plot3(data(1,klb==2),data(2,klb==2),data(3,klb==2),'b*');title('spacial');
plot3(data(1,klb==3),data(2,klb==3),data(3,klb==3),'g*');
