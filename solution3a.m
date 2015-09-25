clear;close all;addpath(genpath(pwd))
data=load('./data3/3a.mat');data=data.data;
n=size(data,2);
r=0.1;
k=round(n*r);
ids=randperm(n,k);
data=data(:,ids);
n=size(data,2);
vertex=zeros(n,n);
for i=1:n
    Q1=data(:,i)';
    for j=1:n
        if i~=j
            Q2=data(:,j)';
%             for k=1:n
%                 if(k~=i &&k~=j) 
%                      P=data(:,k)';
%                      d = abs(det([Q2-Q1;P-Q1]))/norm(Q2-Q1);
%                      vertex(i,j)=vertex(i,j)+exp(-d);
%                 end
%             end
            if(data(1,i)==data(1,j))
                A=1;B=0;C=-data(1,i);
            elseif(data(2,i)==data(2,j))
                A=0;B=-1;C=-data(2,i);
            else
                A=(data(2,j)-data(2,i))/(data(1,j)-data(1,i));
                B=-1;
                C=-A*data(1,i)+data(2,i);
            end
            dist=abs((A*(data(1,:))+B*data(2,:)+C)/(sqrt(A*A+B*B)));
            dist=exp(-dist);
            vertex(i,j)=sum(dist);
        end
    end
end
[C, L, U] = SpectralClustering(vertex, 2, 1);
C=full(C);n=size(C,1);
lb=zeros(n,1);
c1=C(:,1);c2=C(:,2);
c1=logical(c1);c2=logical(c2);
figure(31);hold on;
textstr={'原始数据已被下采样';'如需跑所有数据';'请将r置为1'};
text(160,180,textstr);
plot(data(1,c1),data(2,c1),'r*');
plot(data(1,c2),data(2,c2),'g*');