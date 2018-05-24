function J = costFunctionJ(X, y, theta)
  
  % X is the matrix
  % y is the desired output of each training example
  
  m = size(X,1); % get # of training examples (# of rows)
  predictions = X * theta; % predictions of current hypothesis on all training examples
  
  sqrErrors = (predictions - y).^2; % get the mean squared error for each training example
  
  J = 1 /(2 * m) * sum(sqrErrors);
  
endfunction
