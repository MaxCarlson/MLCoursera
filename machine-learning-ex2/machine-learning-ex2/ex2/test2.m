
data = load('ex2data2.txt');
X = data(:, 1:2);
y = data(:, 3);


% TODO: Create custom mapFeature to practice matrix stuff
X = mapFeature(X(:, 1), X(:, 2));

% Initialize fitting parameters
initial_theta = zeros(size(X, 2), 1);

% Set regularization parameter lambda to 1
lambda = 1;

% Compute and display initial cost and gradient for regularized logistic
% regression
[cost, grad] = costFunctionReg(initial_theta, X, y, lambda);

%[theta, J, exit_flag] = ...
%	fminunc(@(t)(costFunctionReg(t, X, y, lambda)), initial_theta, options);

alpha = 0.3;
count = 400;

[theta, cost] = gradient(X, y, theta, alpha, lambda, count);

% Plot Boundary
plotDecisionBoundary(theta, X, y);
hold on;
title(sprintf('lambda = %g', lambda))

% Labels and Legend
xlabel('Microchip Test 1')
ylabel('Microchip Test 2')

legend('y = 1', 'y = 0', 'Decision boundary')
hold off;

% Compute accuracy on our training set
p = predict(theta, X);

fprintf('Train Accuracy: %f\n', mean(double(p == y)) * 100);
fprintf('Expected accuracy (with lambda = 1): 83.1 (approx)\n');