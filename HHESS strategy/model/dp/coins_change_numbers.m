function f=coins_change_numbers(coins,S)
m=length(coins);
FF=zeros(m,S);
FF(1,:)=((mod(1:S,coins(1)))==0);
FF(:,1)=(coins(1)==1);
for i=2:m
    for j=2:S
        if coins(i)>j
            FF(i,j)=FF(i-1,j);
        else if coins(i)==j
                FF(i,j)=FF(i-1,j)+1;
            else coins(i)<j
                FF(i,j)=FF(i-1,j)+FF(i,j-coins(i));
    end
        end
    end
    f=FF(m,S);
end