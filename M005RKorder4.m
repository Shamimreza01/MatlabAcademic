f=input('Enter the function : ');
t0=input('Enter the initial value of independent variable : ');
y0=input('Enter the initial value of dependent variable : ');
h=input('Enter the step size :');
tn=input('Enter the point of evaluation ');
n=(tn-t0)/h;
t(1)=t0;
y(1)=y0;

for i=1:n
    t(i+1)=t(i)+h;
    k1=h*f(t(i),y(i));
    k2=h*f(t(i)+(h/2),y(i)+(k1/2));
    k3=h*f(t(i)+(h/2),y(i)+(k2/2));
    k4=h*f(t(i)+h,y(i)+k3);
    
    y(i+1)=y(i)+(1/6)*(k1+2*k2+2*k3+k4);
    
    fprintf('y(%.2f)=%.4f \n',t(i+1),y(i+1));
end
