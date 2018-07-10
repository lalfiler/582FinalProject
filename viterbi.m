function [best_score] = viterbi(A,B,pi,o)
%Asislo Alfiler IV
%CS 582
%Assignment 3
index = size(A);
n = length(pi);
m = index(1,2);
T = length(o);
delta = nan(n,m);
psi = nan(n,m);
bestPath = [];

%initialization
for j = 1:n
   delta(1,j) = pi(1,j)*B(o(1),j); 
   psi(1,j) = 0;
end

%induction
for t = 2:T
    temp = zeros(1,n);
    for j = 1:n
        for i = 1:n
         temp(1,i) = delta(t-1,i)*A(i,j);
        end
          [max_value, argmax] = max(temp);
          delta(t,j) = max_value*B(o(t),j);
          psi(t,j) = argmax;
    end
end

%termination
[max_value, argmax] = max(delta(T,:));
pstar = max_value;
bestPath(1,T) = argmax;

%back tracking
for t = (T-1):-1:1
   bestPath(1,t) = psi(t+1,bestPath(1,t+1));
end
disp(psi);
disp(delta);
disp(bestPath);
best_score = pstar;