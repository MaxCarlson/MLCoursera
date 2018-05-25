
data = load('ex2data1.txt');
X = data(:, 1:2);
y = data(:, 3);

plotData(X, y);

[m, n] = size(X);

theta = zeros(n + 1, 1);
X = [ones(m, 1), X];

[cost, grad] = costFunction(theta, X, y);

fprintf('Cost at initial theta (zeros): %f\n', cost);
fprintf('Expected cost (approx): 0.693\n');
fprintf('Gradient at initial theta (zeros): \n');
fprintf(' %f \n', grad);
fprintf('Expected gradients (approx):\n -0.1000\n -12.0092\n -11.2628\n');


% Compute and display cost and gradient with non-zero theta
test_theta = [-24; 0.2; 0.2];
[cost, grad] = costFunction(test_theta, X, y);


fprintf('\nCost at test theta: %f\n', cost);
fprintf('Expected cost (approx): 0.218\n');
fprintf('Gradient at test theta: \n');
fprintf(' %f \n', grad);
fprintf('Expected gradients (approx):\n 0.043\n 2.566\n 2.647\n');


alpha = 0.001;
count = 15;

[theta, cost] = gradient(X, y, theta, alpha, count);

plot(cost);