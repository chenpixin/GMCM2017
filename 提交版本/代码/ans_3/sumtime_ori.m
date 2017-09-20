function time = sumtime(zhongqun) %输入种群 发射点 前48个使用
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
  [row,line]=size(zhongqun);
  time=zeros(row,1);   
  length=zeros(24,6);%第二段路程时间
  lujing=zeros(24,300);%路径 24*300的列向量 发射车路线
  Shortest_Time_A=xlsread('C:\Users\Leo-mac\ownCloud\陈守一\遗传算法\Shortest_Time_A.xls');
  Shortest_Time_B=xlsread('C:\Users\Leo-mac\ownCloud\陈守一\遗传算法\Shortest_Time_B.xls');
  Shortest_Time_C=xlsread('C:\Users\Leo-mac\ownCloud\陈守一\遗传算法\Shortest_Time_C.xls');
  for flag=1:row
  for k=1:3 %D1处第一次发射点
      time(flag,1)=time(flag,1)+Shortest_Time_A(zhongqun(flag,k)+8,1);
      lujing(k,1)=zhongqun(1,k);%第二段路径起点 发射点1
  end
  for k=4:6 %D2处第一次发射点
      time(flag,1)=time(flag,1)+Shortest_Time_A(zhongqun(flag,k)+8,2);
      lujing(k,1)=zhongqun(1,k);%第二段路径起点 发射点1
  end
  for k=7:9 %D1处第一次发射点
      time(flag,1)=time(flag,1)+Shortest_Time_B(zhongqun(flag,k)+8,1);
      lujing(k,1)=zhongqun(1,k);%第二段路径起点 发射点1
  end
  for k=10:12 %D2处第一次发射点
      time(flag,1)=time(flag,1)+Shortest_Time_B(zhongqun(flag,k)+8,2);
      lujing(k,1)=zhongqun(1,k);%第二段路径起点 发射点1
  end
  for k=13:18 %D1处第一次发射点
      time(flag,1)=time(flag,1)+Shortest_Time_C(zhongqun(flag,k)+8,1);
      lujing(k,1)=zhongqun(1,k);%第二段路径起点 发射点1
  end
  for k=19:24 %D2处第一次发射点
      time(flag,1)=time(flag,1)+Shortest_Time_C(zhongqun(flag,k)+8,2);
      lujing(k,1)=zhongqun(1,k);%第二段路径起点 发射点1
  end
 for m=1:6
     for n=1:6
         length(m,n)=Shortest_Time_A(zhongqun(flag,m)+8,n+2)+Shortest_Time_A(zhongqun(flag,m+24)+8,n+2);
     end
     time(flag,1)=time(flag,1)+min(length(m,:));
     lujing(m,2)=min(find(length(m,:)==min(length(m,:))));%第二段路程终点 转载地域
 end
 
  for m=7:12
     for n=1:6
         length(m,n)=Shortest_Time_B(zhongqun(flag,m)+8,n+2)+Shortest_Time_B(zhongqun(flag,m+24)+8,n+2);
     end
     time(flag,1)=time(flag,1)+min(length(m,:));
     lujing(m,2)=min(find(length(m,:)==min(length(m,:))));%第二段路程终点 转载地域
  end
  for m=13:24
     for n=1:6
         length(m,n)=Shortest_Time_C(zhongqun(flag,m)+8,n+2)+Shortest_Time_C(zhongqun(flag,m+24)+8,n+2);
     end
     time(flag,1)=time(flag,1)+min(length(m,:));
     lujing(m,2)=min(find(length(m,:)==min(length(m,:))));%第二段路程终点 转载地域
  end
  lujing(:,2)
  end
  
 %{
  for i=1:6 %A车
      for j=1:300
          if lujing(i,j)!=0
              time=time+Shortest_Time_A(lujing(i,j),lujing(i+1,j+1));
          end
          else
              break
      end
  end
  for i=7:12
      for j=1:300
          if lujing(i,j)!=0
              time=time+Shortest_Time_B(lujing(i,j),lujing(i+1,j+1));
          end
          else
              break
      end
  end
  for i=13:24
      for j=1:300
          if lujing(i,j)!=0
              time=time+Shortest_Time_C(lujing(i,j),lujing(i+1,j+1));
          end
          else
              break
      end
  end
%}


end

