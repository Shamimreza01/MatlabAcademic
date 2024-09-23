f=input('Enter the function : ');
t0=input('Enter the initial value of independent variable ');
y0=input('Enter the initial value of dependent variable ');
h=input('Enter the step size :');
tn=input('Enter the evaluation point :');
n=(tn-t0)/h;
t(1)=t0;
y(1)=y0;

for i=1:n
    k1=h*f(t(i),y(i));
    t(i+1)=t(i)+h;
    k2=h*f(t(i+1),y(i)+k1);
    y(i+1)=y(i)+(1/2)*(k1+k2);
    fprintf('y(%.2f)=%.4f\n',t(i+1),y(i+1));
end