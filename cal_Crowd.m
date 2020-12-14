function crowd_out=cal_Crowd(T,crowd_in,flow,width)
%% 该函数用于计算更新每个路口的车流信息
global v_max;
global f_max;
k=0.5;
cross_num=length(T);
crowd_out=zeros(cross_num);
crowd_exchange=zeros(cross_num);
for i=1:cross_num   %计算每个路口车辆的流出量
    index=find(T(i,:)~=0);   %寻找该路口i可达的所有路口j
    c_out=0;
    for j=1:length(index)
        a=width(i,index(j));    %寻找对应道路的宽度
        f=flow(i,index(j));  %寻找对应道路的密度
        c_out=c_out+k*a*f*v_max*sig(1-f/max(f,f_max));
    end
    crowd_exchange(i)=c_out;
    endf
for i=1:cross_num
    index=find(T(:,i)~=0);   %寻找到达该路口i的所有路口j
    new=crowd_in(i)-crowd_exchange(i);
    for j=1:length(index)
        p=T(index(j),i);
        new=new+p*crowd_exchange(index(j));
    end
    crowd_out(i)=max(new,0);
end