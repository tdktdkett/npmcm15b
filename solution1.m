data=load('data1/1.mat');data=data.data';
n=size(data,1);
[W,s,latent]=pca(data);
data1=s(:,1:2);
data1=(data1-repmat(mean(data1),[n,1]))./sqrt(repmat(var(data1),[n,1]));
figure(1);
plot(data1(:,1),data1(:,2),'ro');
xlabel('��һ�����ɷ�')
ylabel('�ڶ������ɷ�')
[lb,c]=kmeans(data1,2);
result=reshape(lb,20,[]);
result=result';
figure(2);
plot(data1(lb==1,1),data1(lb==1,2),'ro');hold on;
plot(data1(lb==2,1),data1(lb==2,2),'go');
xlabel('��һ�����ɷ�');
ylabel('�ڶ������ɷ�');
save('./result1.mat','result');
xlswrite('./result1.xls',result);