function [theta, cost] = gradient(X, y, theta, alpha, lambda, count)
  
for i = 1:count
  
  pred = sigmoid(X * theta);
  
  [costi, grad] = costFunctionReg(theta, X, y, lambda);

  theta -= grad;
  cost(i) = costi;
  
endfor
  
endfunction
