%% Gradient Descent
function [theta, J_Cost] = GrTest(X, y, theta, alpha, count)
  
m = length(y);
J_Cost = zeros(count, 1);
    
  
for i = 1:count
  J_Cost(i) = costFunctionJ(X, y, theta);
  
  theta -= alpha * (1/m) * J_Cost(i);
  
endfor;

endfunction
