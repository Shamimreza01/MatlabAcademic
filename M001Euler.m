f=input('Enter the function ');
t0=input('Enter the initial value of independent variable ');
y0=input('Enter the initial value of dependent variable ');
tn=input('Enter the point of evaluation : ');
h=input('Enter the step size : ');
n=(tn-t0)/h;
t(1)=t0;
y(1)=y0;

for i=1:n
    y(i+1)=y(i)+h*f(t(i),y(i));
    t(i+1)=t(i)+h;
    fprintf(' y(%.2f)=%.4f \n',t(i+1),y(i+1));
end
