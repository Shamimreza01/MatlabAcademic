f=input('Enter the first function f :');
g=input('Enter the 2nd function g : ');
t0=input('Enter the initial value of independent variable :');
y0=input('Enter the initial value of 1st dependent variable : ');
z0=input('Enter the initial value of 2nd dependent variable : ');
h=input('Enter the step size : ');
tn=input('Enter the point of evaluation : ');
n=(tn-t0)/h;
t(1)=t0;
y(1)=y0;
z(1)=z0;

for i=1:n
    y(i+1)=y(i)+h*f(t(i),y(i),z(i));
    z(i+1)=z(i)+h*g(t(i),y(i),z(i));
    t(i+1)=t(i)+h;
    fprintf('Y(%.2f)=%.4f \n', t(i+1),y(i+1));
    fprintf('z(%.2f)=%.4f \n', t(i+1),z(i+1));
end
