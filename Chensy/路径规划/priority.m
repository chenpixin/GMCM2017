function priority = priority( fpoint,zpoint)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
total_time=zeros(24,1);
priority=zeros(24,1);

Shortest_Time_A=xlsread('E:\数学建模资料\2017研赛\owncloud\陈守一\遗传算法\Shortest_Time_A.xls');
Shortest_Time_B=xlsread('E:\数学建模资料\2017研赛\owncloud\陈守一\遗传算法\Shortest_Time_B.xls');
Shortest_Time_C=xlsread('E:\数学建模资料\2017研赛\owncloud\陈守一\遗传算法\Shortest_Time_C.xls');

for k=1:3 %A1-A3
      total_time(k,1)=Shortest_Time_A(fpoint(k,1)+8,1)+Shortest_Time_A(fpoint(k,1)+8,zpoint(k,1)+2)+Shortest_Time_A(fpoint(k+24,1)+8,zpoint(k,1)+2);
end
for k=4:6 %A4-A6
      total_time(k,1)=Shortest_Time_A(fpoint(k,1)+8,2)+Shortest_Time_A(fpoint(k,1)+8,zpoint(k,1)+2)+Shortest_Time_A(fpoint(k+24,1)+8,zpoint(k,1)+2);
end
for k=7:9 %B1-B3
      total_time(k,1)=Shortest_Time_B(fpoint(k,1)+8,1)+Shortest_Time_B(fpoint(k,1)+8,zpoint(k,1)+2)+Shortest_Time_B(fpoint(k+24,1)+8,zpoint(k,1)+2);
end
for k=10:12 %B4-B6
      total_time(k,1)=Shortest_Time_B(fpoint(k,1)+8,2)+Shortest_Time_B(fpoint(k,1)+8,zpoint(k,1)+2)+Shortest_Time_B(fpoint(k+24,1)+8,zpoint(k,1)+2);
end
for k=13:18 %C1-C6
      total_time(k,1)=Shortest_Time_C(fpoint(k,1)+8,1)+Shortest_Time_C(fpoint(k,1)+8,zpoint(k,1)+2)+Shortest_Time_C(fpoint(k+24,1)+8,zpoint(k,1)+2);
end
for k=19:24 %C7-C12
      total_time(k,1)=Shortest_Time_C(fpoint(k,1)+8,2)+Shortest_Time_C(fpoint(k,1)+8,zpoint(k,1)+2)+Shortest_Time_C(fpoint(k+24,1)+8,zpoint(k,1)+2);
end
sum(total_time)
[x index]=sort(total_time');
for i=1:24
    priority(index(1,i),1)=25-i;%最快的优先级为24
end

end

