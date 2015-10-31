clc;
clear all;
close all;
%N=input('enter the number of iteratoins\n');
N=1000;
m=[200,200];
%m=input('ente the size of life matrix\n');
A=(rand(m)-0.5)>0;
A(40:end,40:end)=0;
figure
for i=1:N
    A=life(A);
    imshow(A);
end

