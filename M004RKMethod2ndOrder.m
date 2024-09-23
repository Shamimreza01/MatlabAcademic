 f=input('Enter the first function ');
 g=input('Enter the second function ');
 t0=input('Enter the initial value of independent variable :');
 y0=input('Enter the initial value of 1st dependent variable :');
 z0=input('Enter the initial value of 2nd dependent variable :');
 h=input('Enter the step size ');
 tn=input('Enter the point of evaluation :');
 n=(tn-t0)/h;
 t(1)=t0;
 y(1)=y0;
 z(1)=z0;
 
 for i=1:n
     t(i+1)=t(i)+h;
     k1=h*f(t(i),y(i),z(i));
     m1=h*g(t(i),y(i),z(i));
     
     k2=h*f(t(i+1),y(i)+k1,z(i)+m1);
     m2=h*g(t(i+1),y(i)+k1,z(i)+m1);
     
     y(i+1)=y(i)+(1/2)*(k1+k2);
     z(i+1)=z(i)+(1/2)*(m1+m2);
     
     fprintf('y(%.2f)=%.4f \n z(%.2f)=%.4f ',t(i+1),y(i+1),t(i+1),z(i+1));
 end
 
     
     
 