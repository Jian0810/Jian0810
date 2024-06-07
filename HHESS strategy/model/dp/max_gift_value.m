function f=max_gift_value(M);
[m,n]=size(M);
FF=M;
FF(:,1)=cumsum(M(:,1));
FF(1,:)=cumsum(M(1,:));
for i=2:m
    for j=2:n
        ff_1=FF(i,j-1);
        ff_2=FF(i-1,j);
        FF(i,j)=(max(ff_1,ff_2))+M(i,j);
    end
end
 f=FF(i,j);
end