x=input('Enter the value of x :');
y=input('Enter the value of y :');
p=input('Enter \n 1.for st line fitting \n 2.for parabola fitting \n 3.for cubic fitting \n ');
om=p+1;
A=zeros(om);
for i=1:om
    for j=1:om
        A(i,j)=sum(x.^(i+j-2));
    end
end

B=zeros(om,1);
for i=1:om
    B(i)=sum(x.^(i-1).*y);
end
 
X=A\B;

for i=p:-1:1
    fprintf(' the polynomial is +(%.3f)x^%d',X(i+1),i);
end

fprintf('+(%.3f)',X(1));


