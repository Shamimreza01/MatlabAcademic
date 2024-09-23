x=input('Enter the abscissas :');
y=input('Enter the ordinates :');
p=input('Enter the point of evaluation :');

om=length(y);
ND=zeros(om);
ND(:,1) = y;

for j=2:om
    for i=j:om
      ND(i,j)=(ND(i,j-1)-ND(i-1,j-1))/(x(i)-x(i-j+1));
    end
end
c=ND(om,om);
for k=om-1:-1:1
    c=conv(c,poly(x(k)));
    m=length(c);
    c(m)=c(m)+ND(k,k);
end
c
pVal=polyval(c,p)