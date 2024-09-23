x=input('Enter the value of x : ');
y=input('Enter the value of y : ');
interpolatingPoint=input('Enter the point for interpolation : ');

n=length(x);
NF=zeros(n);
NF(:,1)=y;

for j=2:n
    for i=1:n-j+1
        NF(i,j)=NF(i+1,j-1)-NF(i,j-1);
    end
end
c=NF(1,n);
for i=n-1:-1:1
     p=poly(x(1))/(x(2)-x(1));
     p(2)=p(2)-(i-1);
     c=conv(c,p)/i;
     m=length(c);
     c(m)=c(m)+NF(1,i);
end
pVal=polyval(c,interpolatingPoint);

for i=1:n-1
    fprintf('+(%.3f)x^%d',c(i),n-i)
end
fprintf('+(%.3f)\n',c(n));

fprintf('The interpolation value is : %.3f',pVal);

X=linspace(x(1),x(n),100);
Y=polyval(c,X);
plot(X,Y,'r')
hold on;
plot(x,y,'-o')
