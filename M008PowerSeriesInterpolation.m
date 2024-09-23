x=input('Enter the value of x :');
y=input('Enter the value of y :');
xi=input('enter the point of evaluation:');
N=length(x);
p=N-1;

A=zeros(N);

for i=1:N
    for j=1:N
        A(i,j)=x(i).^(j-1);
        
    end
end

B=zeros(N,1);
for i=1:N
    B(i)=y(i);
end

X=A\B;
z=flip(X);
yi=polyval(z,xi);

for i=p:-1:1
    fprintf('+(%.3f)x^%d ',X(i+1),i);
end
fprintf('+(%.3f)',X(1));
fprintf('\n the value of y at x %.3f is %.4f ',xi,yi);


