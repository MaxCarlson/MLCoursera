
clear; close all; clc;
load('ex3data1.mat');

inputLayer = 400; % 20x20 image of a digit
labels = 10 % # of digits

% Get the cost for each feature and regularize all features aside from X0
%J = -(1/m) * (y' * log(pred) + (1 - y') * log(1 - pred) ) + (
      lambda/(2 * m) * ((theta' .* [0; ones(size(theta, 1) - 1, 1)]') * theta));

% Regularize gradient for all theta's except theta0
%grad = (1/m) * ( X' * (pred - y)) + (lambda/m) * theta .* [0; ones(size(theta, 1) - 1, 1)];
