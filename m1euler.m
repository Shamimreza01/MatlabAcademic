f=input('enter the function');
g=input('enter the 2nd fun');
t0=input('enter the initial value of independent variable');
y0=input('enter the i v of dependent vab');
z0=input('enter the 2nd d v ');
h=input('enter the step size');
tn=input('enter t p o evalua');
n=(tn-t0)/h;
t(1)=t0;
y(1)=y0;
z(1)=z0;
for i=1:n
    y(i+1)=y(i)+h*f(t(i),y(i),z(i));
    z(i+1)=z(i)+h*g(t(i),y(i),z(i));
    t(i+1)=t(i)+h;
    fprintf('y(%.2f)=%.4f',t(i+1),y(i+1));
    fprintf('z(%.2f)=%.4f',t(i+1),z(i+1));
end