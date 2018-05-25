
data = load('ex1data2.txt');
dataSz = size(data, 2);
X = data(:, 1:dataSz - 1); % Data not including correct answers
y = data(:, dataSz); % real answers
m = length(y); % # of training examples

[X, mu, sigma] = featureNormalize(X); % Normalize the data

X = [ones(m, 1), X]; % Add X0 coloumn

alpha = 0.01;
num_iters = 15;

theta = zeros(dataSz, 1); % create base theta's at 0 for each feature

[theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters);



% Plot the convergence graph
figure;
plot(1:numel(J_history), J_history, '-b', 'LineWidth', 2);
xlabel('Number of iterations');
ylabel('Cost J');
