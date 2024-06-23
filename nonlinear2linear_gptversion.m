% Your Name
% Student ID

% nonlinear2linear.m

% Original data
x = [0.1 0.2 0.4 0.6 0.9 1.3 1.5 1.7 1.8];
y = [0.75 1.25 1.45 1.25 0.85 0.55 0.35 0.28 0.18];

% Transform data for linear regression
z = log(y);

% Perform linear regression using polyfit
p = polyfit(x, z, 1);

% Extract parameters
b0 = p(2);
b1 = p(1);

% Display parameters
fprintf('b0 (ln(alpha)): %.4f\n', b0);
fprintf('b1 (beta): %.4f\n', b1);

% Plotting
figure;

% Linear fit and data
subplot(1,2,1);
plot(x, y, 'o', 'MarkerFaceColor', 'b', 'MarkerSize', 8); % Data points
hold on;
y_fit_linear = exp(polyval(p, x)); % Fitted line (back-transform)
plot(x, y_fit_linear, 'r-', 'LineWidth', 2); % Fitted line
xlabel('x');
ylabel('y');
title('Linear Fit and Data');
legend('Data', 'Linear Fit');

% Original data and model
subplot(1,2,2);
plot(x, y, 'o', 'MarkerFaceColor', 'b', 'MarkerSize', 8); % Data points
hold on;
y_fit_original = exp(b0 + b1 * x); % Model (back-transform)
plot(x, y_fit_original, 'r-', 'LineWidth', 2); % Model
xlabel('x');
ylabel('y');
title('Original Data and Model');
legend('Data', 'Model');
