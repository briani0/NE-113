%Brian Ibitoye
%21085455

x = [0.1 0.2 0.4 0.6 0.9 1.3 1.5 1.7 1.8];
y = [0.75 1.25 1.45 1.25 0.85 0.55 0.35 0.28 0.18];

w = log(y./x);
p = polyfit(x,w,1);


b0 = p(2); %ln(alpha)
beta = p(1); %beta

alpha = exp(b0);

fprintf('alpha: %.4f\nbeta: %.4f\n', alpha, beta);

figure

% Linear fit and data
subplot(2,1,1);
plot(x, log(y./x), 'o', 'MarkerFaceColor', 'b', 'MarkerSize', 8); % Data points
hold on;
y_fit_linear = polyval(p, x);

plot(x, y_fit_linear, 'r-', 'LineWidth', 2, 'Color','green');
xlabel('x');
ylabel('y');
title('Linear Fit of y = αx exp(βx) and Data');
legend('Data points', 'Linear Fit of y = αx exp(βx)');

% Original data and y = αx exp(βx)
subplot(2,1,2);
plot(x, y, 'o', 'MarkerFaceColor', 'red', 'MarkerSize', 8); % Data points
hold on;
y_original = alpha.*x.*exp(beta.*x);
plot(x, y_original, 'r-', 'LineWidth', 2, 'Color', 'cyan'); 
xlabel('x');
ylabel('y');
title('Original Data and y = αx exp(βx)'); %
legend('Data points', 'y = αx exp(βx)');
