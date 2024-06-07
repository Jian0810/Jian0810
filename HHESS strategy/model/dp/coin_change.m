function f=coin_change(coins,S)
FF=+inf*ones(1,(S+2));
FF(S+2)=0;
for x=1:S
    tem=x-coins;
    tem(tem<0)=S+1;
    tem(tem==0)=S+2;
   FF(x)=min(FF(tem))+1;
end
if FF(S)<+inf
    f=FF(S);
else
    f=-1;
end
end