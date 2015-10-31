%number of neighbours function
% x is the position ofthe element in the toroid matrix
% g is the toriod matrix
function y=num_live_neighbours(x,g)
y=g(x(1)-1:x(1)+1,x(1)-1:x(2)+1);
y(2,2)=0;
y=sum(y(:));
    end