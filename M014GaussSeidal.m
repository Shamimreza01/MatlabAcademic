A=input('Enter the coefficient matrix A :');
B=input('Enter the source matrix B : ');
IG=input('Enter the initial guess matrix IG :');
n=input('Enter the number of iteration :');
e=input('Enter the tollerence :');

om=length(B);
X=zeros(om,1);
Y=zeros(om,1);

for j=1:n
    for i=1:om
        X(i)=(B(i)/A(i,i))-(A(i,[1:i-1,i+1:om])*p([1:i-1,i+1:om]))/A(i,i);
        IG(i)=X(i);
    end
    fprintf('number of iteration is %d \n',j);
    X
    if abs(Y-X)<e
        break;
    end
    Y=X;
end
    