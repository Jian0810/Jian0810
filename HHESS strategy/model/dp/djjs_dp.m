function [f,IND]=djjs_dp(M)
  k=length(M);
if k==1
    f=M(1);
elseif k==2
    f=max(M(1),M(2));
else %k>=3
   FF=ones(1,k);
   FF(1)=M(1);
   FF(2)=max(M(1),M(2));
   for i=3:k
       FF(i)=max(FF(i-1),(FF(i-2)+M(i)));
       
   end
   f=FF(k);
end
IND=[];
ind=find(FF==FF(end),1);
IND=[IND,ind];
while FF(ind)>M(ind)
    ind=find(FF==(FF(ind)-M(ind)),1);
    IND=[IND,ind];
end
IND=IND(end:-1:1);
end    