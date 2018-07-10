function [probability] =  forward(A,B,pi,o)
%Asislo Alfiler IV
%CS 582
%Assignment 3

%dimensions of matrix A
matrix = size(A);
%n * m matrix
n = length(pi);
m = matrix(1,2);
alpha = NaN(n,m);
L = length(o);

%initialization
for i=1:m       
    alpha(1,i) = B(o(1),i)*pi(1,i);
end

%induction
for t = 2:L  
    for j = 1:n
        temp = 0;
        for i = 1:n
            temp = temp + A(i,j) * alpha(t-1,i);
        end
        alpha(t,j) = temp * B(o(t),j);
    end
end

%termination
pOlambda = 0;
for t = 1:n        
    pOlambda = pOlambda + alpha(L,t);        
end

disp(alpha);
probability = pOlambda;
