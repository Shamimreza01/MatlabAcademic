f=input('Enter the 1st function : ');
g=input('Enter the 2nd function : ');

t0=input('Enter the initial value of independent variable : ');
y0=input('Enter the initial value of 1st dependent variable : ');
z0=input('Enter the initial value of 2nd dependent variable :');
h=input('Enter the step size :');
tn=input('Enter the point of evaluation ');
n=(tn-t0)/h;
t(1)=t0;
y(1)=y0;
z(1)=z0;

for i=1:n
    t(i+1)=t(i)+h;
    k1=h*f(t(i),y(i),z(i));
    m1=h*g(t(i),y(i),z(i));
    
    k2=h*f(t(i)+(h/2),y(i)+(k1/2),z(i)+(m1/2));
    m2=h*g(t(i)+(h/2),y(i)+(k1/2),z(i)+(m1/2));
    
    k3=h*f(t(i)+(h/2),y(i)+(k2/2),z(i)+(m2/2));
    m3=h*g(t(i)+(h/2),y(i)+(k2/2),z(i)+(m2/2));
    
    k4=h*f(t(i)+h,y(i)+k3,z(i)+m3);
    m4=h*g(t(i)+h,y(i)+k3,z(i)+m3);
    
    y(i+1)=y(i)+(1/6)*(k1+2*k2+2*k3+k4);
    z(i+1)=z(i)+(1/6)*(m1+2*m2+2*m3+m4);
    
    fprintf('y(%.2f)=%.4f  \n z(%.2f)=%.4f \n',t(i+1),y(i+1),t(i+1),z(i+1));
end