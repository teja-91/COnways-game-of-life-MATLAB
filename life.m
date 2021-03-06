% Given a matrix A that represents the state of Conway's game of Life at one instant (time t=n), return the matrix B that represents the state of the game at the next instant (time t=n+1).

% 
% Examples:
% 
%  Input  A = [ 1   1   0   0
%               0   1   0   0
%               1   1   0   0
%               0   0   0   0 ]
%  Output B = [ 1   1   0   0
%               0   0   1   0
%               1   1   0   0
%               0   0   0   0 ]
%  Input  A = [ 0   1   1   0
%               1   1   1   0
%               0   0   1   0
%               0   0   0   0 ]
%  Output B = [ 1   0   1   1
%               1   0   0   0
%               0   0   1   1
%               0   1   1   0 ]

function [B,g] = life(A)
g=toroid_mat(A);
[m,n]=size(A);
k=zeros(m,n);
for p=1:m
    for q=1:n
        k(p,q)=num_live_neighbours([p+1,q+1],g);
    end
end
A((A==0)&(k<2))=255;
A((A==0)&(k>3))=255;
A((A==255)&(k==3))=0;
  B = A;
end