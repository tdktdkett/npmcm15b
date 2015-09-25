%  6 ellipse
%  5 line
clear;
data=load('./data4/4b.mat');data=data.data;
% RandomDisMin=10;
% RandomDis=10;
% LineLen=3;
Vertex(1,:)=(data(1,:)-mean(data(1,:)))/sqrt(var(data(1,:)));
Vertex(2,:)=(data(2,:)-mean(data(2,:)))/sqrt(var(data(2,:)));
lb=smmc(Vertex,10,1,3,8,8);
plot(data(1,lb==1),data(2,lb==1),'*','Color',[0 0 0.5]);hold on;
plot(data(1,lb==2),data(2,lb==2),'*','Color',[0 0 1]);hold on;
plot(data(1,lb==3),data(2,lb==3),'*','Color',[0 0.5 0]);hold on;
plot(data(1,lb==4),data(2,lb==4),'*','Color',[0 0.5 0.5]);hold on;
plot(data(1,lb==5),data(2,lb==5),'*','Color',[0 0.5 1]);hold on;
plot(data(1,lb==6),data(2,lb==6),'*','Color',[0 1 0]);hold on;
plot(data(1,lb==7),data(2,lb==7),'*','Color',[0 1 0.5]);hold on;
plot(data(1,lb==8),data(2,lb==8),'*','Color',[0 1 1]);hold on;
plot(data(1,lb==9),data(2,lb==9),'*','Color',[0.5 0 0]);hold on;
plot(data(1,lb==10),data(2,lb==10),'*','Color',[0.5 0 0.5]);hold on;
plot(data(1,lb==11),data(2,lb==11),'*','Color',[0.5 0 1]);hold on;
% n=size(data,2);
% Vertex=zeros(n,12);
% 
% distance_matrix=zeros(n,n);
% for i=1:n
%     i
%     for j=i:n
%         distance_matrix(i,j)=norm([data(1,i),data(2,i)]-[data(1,j),data(2,j)]);
%     end
% end
% distance_matrix=distance_matrix+distance_matrix';
% for i=1:n
%     i
%     for random_times=1:5
%         ellipse_cnt=0;
%         straight_cnt=0;
%         P_collection=i;
%         for j=1:(LineLen/2)
%             NextP=mNearestPointRight(P_collection(end),data,distance_matrix,n,uint32(RandomDis*rand(1,1))+RandomDisMin);
%             if(NextP~=0)
%                 P_collection=[P_collection NextP];
%             else
%                 break;
%             end  
%         end
%         for j=1:(LineLen/2)
%             NextP=mNearestPointLeft(P_collection(end),data,distance_matrix,n,uint32(RandomDis*rand(1,1))+RandomDisMin);
%             if(NextP~=0)
%                 P_collection=[P_collection NextP];
%             else
%                 break;
%             end  
%         end
% %         figure(42);
% %         plot(data(1,P_collection),data(2,P_collection),'b*');
% %         set(gca,'XLim',[0 400]);
% %         set(gca,'YLim',[0 400]);
%         if(size(P_collection,2)==LineLen+1)
%             ellipse_t= fit_ellipse(data(1,P_collection),data(2,P_collection));
%             if(~isempty(ellipse_t) && strcmp(ellipse_t.status,''))
%                     ellipse_cnt=ellipse_cnt+1;
%                     if (ellipse_t.a<1000 && ellipse_t.b<1000 && ellipse_t.X0<1000 && ellipse_t.Y0<1000)
%                         if(ellipse_t.a>20 && ellipse_t.b>20)
%                             Vertex(i,1:2)=Vertex(i,1:2)+[ellipse_t.a ellipse_t.b];
%                         end
%                     end
%             else
%                 line_para=polyfit(data(1,P_collection),data(2,P_collection),1);
%                     Vertex(i,3:4)=line_para;
%                     straight_cnt=straight_cnt+1;
%             end
%     %         set(gca,'XLim',[0 400]);
%     %         set(gca,'YLim',[0 400]);
% 
%         end
%     end
%     if(ellipse_cnt) Vertex(i,1:2)=Vertex(i,1:2)/ellipse_cnt;
%     end
%     if(straight_cnt) Vertex(i,3:4)=Vertex(i,3:4)/straight_cnt;
%     end
% end
% Vertex(:,3)=Vertex(:,3)*100;
% [klb,C]=kmeans(Vertex,2);
% figure(42);
% plot(data(1,:),data(2,:),'r*');hold on;
% figure(421);
% plot(data(1,klb==1),data(2,klb==1),'b*');hold on;
% figure(422);
% plot(data(1,klb==2),data(2,klb==2),'g*');hold on;
% figure(423);
% plot(data(1,klb==3),data(2,klb==3),'k*');hold on;  
% figure(424);
% plot(data(1,klb==4),data(2,klb==4),'r*');hold on; 
% figure(425);
% plot(data(1,klb==5),data(2,klb==5),'r*');hold on; 
% figure(426);
% plot(data(1,klb==6),data(2,klb==6),'r*');hold on; 
% figure(427);
% plot(data(1,klb==7),data(2,klb==7),'r*');hold on; 
% figure(428);
% plot(data(1,klb==8),data(2,klb==8),'r*');hold on; 
% figure(429);
% plot(data(1,klb==9),data(2,klb==9),'r*');hold on; 
% figure(4210);
% plot(data(1,klb==10),data(2,klb==10),'r*');hold on; 
% figure(4211);
% plot(data(1,klb==11),data(2,klb==11),'r*');hold on; 