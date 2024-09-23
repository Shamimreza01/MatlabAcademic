A=input('Enter the matrix ');
B=input('Enter the source vector B :');
p=input('Enter the initial guess vector :');
n=input('Enter the number of iteration :');
e=input('Enter the tollerence size :');
om=length(B);
X=zeros(om,1);
for j=1:n
    for i=1:om
        X(i)=(B(i)/A(i,i))-(A(i,[1:i-1,i+1:om])*p([1:i-1,i+1:om]))/A(i,i);
    end
    fprintf('number of iteration is %d \n',j);
    X
    if abs(p-X)<e
        break;
    end
    p=X
end
    