
data = load('ex2data1.txt');
X = data(:, 1:2);
y = data(:, 3);

plotData(X, y);

[m, n] = size(X);

theta = zeros(n + 1, 1);
X = [ones(m, 1), X];

alpha = 0.0001;
count = 150;

[theta, cost] = gradient(X, y, theta, alpha, count);

plot(cost);