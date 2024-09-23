x=input('Enter the value of x : ');
y=input('Enter the value of y : ');
interpolatingPoint=input('Enter the point for interpolation : ');

n=length(x);
NB=zeros(n);
NB(:,1)=y;

for j=2:n
    for i=j:n
        NB(i,j)=NB(i,j-1)-NB(i-1,j-1);
    end
end
NB
c=NB(n,n);
for i=n-1:-1:1
     p=poly(x(n))/(x(2)-x(1));
     p(2)=p(2)+(i-1);
     c=conv(c,p)/i;
     m=length(c);
     c(m)=c(m)+NB(n,i);
end
pVal=polyval(c,interpolatingPoint);

for i=1:n-1
    fprintf('+(%.3f)x^%d',c(i),n-i)
end
fprintf('+(%.3f)\n',c(n));

fprintf('The interpolation value is : %.3f',pVal);