function y=toroid_mat(A)
%toroid matrix
%the edges of the matrix wrap left to right and top to bottom.
[m,n]=size(A);
g=zeros(m+2,n+2);
g(2:end-1,2:end-1)=A;
g(1,2:end-1)=A(end,:);
g(end,2:end-1)=A(1,:);
g(2:end-1,1)=A(:,end);
g(2:end-1,end)=A(:,1);
y=g;
end