clear;close all;addpath(genpath(pwd))
data=load('./data2/2a.mat');data=data.data;
% figure(1);axis([-2, 3 ,-0.5, 3])
% plot(data(1,:),data(2,:),'b*');
n=size(data,2);
k=zeros(n,n);
b=k;
for i=1:n
   x1=data(1,i);y1=data(2,i);
   for j=1:n
       if(i==j),continue; end
       x2=data(1,j);y2=data(2,j);
       if(x1==x2)
           k(i,j)=Inf;b(i,j)=x1;%vertical 
       elseif(y1==y2)
           k(i,j)=0;b(i,j)=Inf;
       else
           k(i,j)=(y1-y2)/(x1-x2);   b(i,j)=y1-k(i,j)*x1;
       end
   end
end
k1=reshape(k,1,[]);b1=reshape(b,1,[]);
%discretize k and b
k_bin=-10:0.01:10;      b_bin=-10:0.11:10;
b_hist=histc(b1,b_bin);
k_hist=histc(k1,k_bin);

figure(2);plot(k_bin,k_hist);title('k');
figure(3);plot(b_bin,b_hist);title('b');
[k_sorted,k_ind]=sort(k_hist,'descend');
[b_sorted,b_ind]=sort(b_hist,'descend');
k_sorted(1:10);
b_sorted(1:10);
k1=k_bin(k_ind(1));k2=k_bin(k_ind(2));
b1=b_bin(b_ind(2));b2=b_bin(b_ind(1));
%k1 k2  b1 b2 get
x=(b1-b2)/(k2-k1);
y=(b1-b2)/(k2-k1)*k1+b1;
%%getted cross point

% map data
data_mapped=zeros(size(data));
for i=1:n
   x1=data(1,i);y1=data(2,i);
   if(x1==x)
       data_mapped(1,i)=Inf;data_mapped(2,i)=x1;
   else
       k=(y-y1)/(x-x1);
       b=y-k*x;
       data_mapped(1,i)=k;
       data_mapped(2,i)=b;
   end
end
figure();plot(data_mapped(1,:),data_mapped(2,:),'r*');
idx=kmeans(data_mapped',2);
id1=find(idx==1);
id2=find(idx==2);

figure();hold on;
plot(data(1,id1),data(2,id1),'ro');
plot(data(1,id2),data(2,id2),'bo');