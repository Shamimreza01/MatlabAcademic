x=input('Enter the value of x : ');
y=input('Enter the value of y :');
IX=input('Enter the point for interpolation ');
n=length(x);
pTerms=zeros(n:n);
for i=1:n
    tempP=1;
    for j=1:n
        if i~=j
            tempP=conv(tempP,poly(x(j)))/(x(i)-x(j));
        end
    end
    pTerms(i,:)=tempP.*y(i);
end
pTerms
polynomial=sum(pTerms);
pVal=polyval(polynomial,IX);

for i=1:n-1
    fprintf('+(%.3f)x^%d',polynomial(i),n-i);
end
fprintf('+(%.3f)\n',polynomial(n));

fprintf('The interpolation value is : %.3f',pVal);
