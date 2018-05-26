function [theta, cost] = gradient(X, y, theta, alpha, count)
  
m = length(y);



for i = 1:count
  
  pred = sigmoid(X * theta);

  grad = -(alpha/m) * X' * (pred - y);
  
  theta = theta - grad;
  
  cost(i) = (1/m) * sum(-y .* log(pred) - ((1 - y) .* log(1 - pred)));
  
endfor
  
endfunction
