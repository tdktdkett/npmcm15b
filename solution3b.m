clear;close all;addpath(genpath(pwd))
data=load('./data3/3b.mat');data=data.data;
n=size(data,2);
m=size(data,1)/2;
Vertex_sc=zeros(n,n);
Vertex_sc_fil=zeros(n,n);
%
% for i=1:5
%     for j=1:30
%     %plot(data(j*2-1,i),data(j*2,i),'ro') ;hold on;
%     %plot(data(j*2-1,i+1),data(j*2,i+1),'ro') ;hold on;
%      cov_mat=cov(data');
%     end
% end
data2=reshape(data,2,m,n);
Vertex=permute(data2,[2 1 3]);
for i=1:n
    for j=1:n
%          for k=1:m-1
%            A=[Vertex(k,1,i) Vertex(k,2,i)];
%            B=[Vertex(k,1,j) Vertex(k,2,j)];
         Vertex_sc(i,j)=exp(-sum(norm([Vertex(:,1,i) Vertex(:,2,i)]-[Vertex(:,1,j) Vertex(:,2,j)])));
%           Vertex_sc(i,j)=Vertex_sc(i,j)+acos(dot(A,B)/(norm(A)*norm(B)));
%         end
%         Vertex_sc(i,j)=exp(-Vertex_sc(i,j));
    end
end
% Vertex_sc_fil(Vertex_sc>0.1)=1;
% Vertex_sc_fil(Vertex_sc<0.1)=0;
Vertex_sc_fil=Vertex_sc;
[C, L, U] = SpectralClustering(Vertex_sc_fil, 3, 1);
C=full(C);n=size(C,1);
lb=zeros(n,1);
c1=C(:,1);c2=C(:,2);c3=C(:,3);
c1=logical(c1);c2=logical(c2);c3=logical(c3);
% figure(1);
% for i=1:n
%      x1=0;y1=0;
%     for j=1:m
%           x2=x1+Vertex(j,1,i);
%           y2=y1+Vertex(j,2,i);
%        if(c1(i)==1)
%             line([x1,x2],[y1,y2],'color','r');hold on;
%         elseif(c2(i)==1)
%             line([x1,x2],[y1,y2],'color','g');hold on;
%         elseif(c3(i)==1)
%             line([x1,x2],[y1,y2],'color','b');hold on;
%         end
%         x1=x2;
%         y1=y2;
%     end
% end
figure(2);
for i=1:n
     x1=Vertex(1,1,i);y1=Vertex(1,2,i);
    for j=2:m
          x2=Vertex(j,1,i);
          y2=Vertex(j,2,i);
        if(c1(i)==1)
            line([x1,x2],[y1,y2],'color','r');hold on;
        elseif(c2(i)==1)
            line([x1,x2],[y1,y2],'color','g');hold on;
        elseif(c3(i)==1)
            line([x1,x2],[y1,y2],'color','b');hold on;
        end
%         if i==382
%             line([x1,x2],[y1,y2],'color','k');hold on;
%         end
        x1=x2;
        y1=y2;
    end
end
result=zeros(n,1);
result(C(:,1)==1)=1;
result(C(:,2)==1)=2;
result(C(:,3)==1)=3;
result=[result;0;0;0];
result=reshape(result,20,[]);
result=result';
save('.\result3b.mat','result');
xlswrite('./result3b.xls',result);
