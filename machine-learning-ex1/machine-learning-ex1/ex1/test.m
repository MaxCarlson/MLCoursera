
% Training examples and real results
data = load('ex1data1.txt');

% The inputs 
X = data(:, 1);

% The real result of training data
y = data(:, 2);

% # of training examples
m = length(y);

plotData(X, y);
%pause;

X = [ones(m, 1), X]; % Add X0 to X
theta = zeros(2, 1); % Set initial thetas

alpha = 0.01;
count = 1500;

[theta, history] = gradientDescent(X, y, theta, alpha, count);

% print theta to screen
fprintf('Theta found by gradient descent:\n');
fprintf('%f\n', theta);
fprintf('Expected theta values (approx)\n');
fprintf(' -3.6303\n  1.1664\n\n');

% Plot the linear fit
hold on; % keep previous plot visible
plot(X(:,2), X*theta, '-')
legend('Training data', 'Linear regression')
hold off % don't overlay any more plots on this figure

% Predict values for population sizes of 35,000 and 70,000
predict1 = [1, 3.5] *theta;
fprintf('For population = 35,000, we predict a profit of %f\n',...
    predict1*10000);
predict2 = [1, 7] * theta;
fprintf('For population = 70,000, we predict a profit of %f\n',...
    predict2*10000);
    
hold on;
plot(history);