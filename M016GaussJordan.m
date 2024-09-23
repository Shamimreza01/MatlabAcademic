A=input('Enter the coefficient matrix A :');
B=input('Enter the source vector B :');
N=length(B);
Aug=[A B];
X=zeros(N,1);

for j=1:N
    Aug(j,:)=Aug(j,:)/Aug(j,j)
 for i=1:N 
 if i~=j
 m=Aug(i,j)
 Aug(i,:)=Aug(i,:)-m*Aug(j,:)
 end
 end
end