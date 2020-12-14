function crowd_out=flow_to_crowd(T,flow,width)
cross_num=length(flow);
crowd_out=zeros(cross_num,2);
for i=1:30
    i_index=find(T(i,:)~=0);    %找到路口i的可达路口索引
    count=0; %记录第i个路口的crowd
    connect_i=sum(width(i,i_index));    %该路口相连所有道路的宽度总和
    for j=1:length(i_index)
        count=count+flow(i,i_index(j))*connect_i/(2*width(i,i_index(j)));
    end
    count=count/2; %因为在遍历的过程中flow是对称矩阵，遍历了两次
    crowd_out(i,:)=[count,count*0.1];
end