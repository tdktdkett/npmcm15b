clear;close all;addpath(genpath(pwd))
data=load('./data3/3c.mat');data=data.data;
n=size(data,2);
% 
% figure(1);
% for i=1:size(data,2)
%    f=uint8(data(:,i));
%    f=reshape(f,[42,48]);
%    subplot(5,4,i);
%    imshow(f);
%    
% end
[coe,score,lattent]=pca(data');
data1=score(:,2);
data1=data1-repmat(mean(data1,1),[n,1]);
data1=data1./repmat(std(data1),[n,1]);
% figure(2);
% plot(data1(:,1),data1(:,2),'ro');
[lb,C]=kmeans(data1,2);
lb1=find(lb==1);
lb2=find(lb==2);
figure(1);hold on;
m=ceil(length(lb1)/4);
for i=1:length(lb1)
   f=uint8(data(:,lb1(i)));
   f=reshape(f,[42,48]);
   subplot(m,4,i);
   imshow(f);
end
figure(2);hold on;
m=ceil(length(lb2)/4);
for i=1:length(lb2)
   f=uint8(data(:,lb2(i)));
   f=reshape(f,[42,48]);
   subplot(m,4,i);
   imshow(f);
end
result=lb;result=result';
save('./result3c.mat','result')
xlswrite('./result3c.xls',result);