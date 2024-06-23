%Brian Ibitoye
%21085455

x = [5 10 15 20 25 30 35 40 45 50];
y = [17 24 31 33 37 37 40 40 42 41];

%queston1, part a, linear fit

pol = polyfit(x,y,1);
y_lin = polyval(pol,x);

% Linear fit and data
figure
plot(x, y, 'o', 'MarkerFaceColor', 'b', 'MarkerSize', 8); % Data points
hold on;

plot(x, y_lin, 'r-', 'LineWidth', 2, 'Color','green');
xlabel('x');
ylabel('y');
title('A Straight Line (part a)');
legend('Data points', 'Straight Line');


%question1, part b, power equation

pol2 = polyfit(log(x),log(y),1);
y_lin2 = exp(polyval(pol2,log(x)));

% Power equation and data
figure
plot(x, y, 'o', 'MarkerFaceColor', 'b', 'MarkerSize', 8); % Data points
hold on;

plot(x, y_lin2, 'r-', 'LineWidth', 2, 'Color','green');
xlabel('x');
ylabel('y');
title('A Power Equation (part b)');
legend('Data points', 'Power Equation');

%question1, part c, saturation growth rate

pol3 = polyfit(1./x,1./y,1);
y_lin3 = polyval(pol3,1./x);

%Saturation Growth rate equation and data
figure
plot(x, y, 'o', 'MarkerFaceColor', 'b', 'MarkerSize', 8); % Data points
hold on;

plot(x, 1./y_lin3, 'r-', 'LineWidth', 2, 'Color','green');
xlabel('x');
ylabel('y');
title('Sautration Growth Rate Equation (part c)');
legend('Data points', 'Sautration Growth Rate Equation');

%question1, part d, parabola

pol4 = polyfit(x,y,2);
y_lin4 = polyval(pol4,x);

%Parabolic equation and data
figure
plot(x, y, 'o', 'MarkerFaceColor', 'b', 'MarkerSize', 8); % Data points
hold on;

plot(x, y_lin4, 'r-', 'LineWidth', 2, 'Color','green');
xlabel('x');
ylabel('y');
title('Parabola Equation (part d)');
legend('Data points', 'Parabolic Equation');


Sr_linear = sum((y - y_lin).^2);
St = sum((y - mean(y)).^2);
r_squared_linear = (St - Sr_linear)/St;

fprintf("For the linear equation, Sr = %3.2f, St = %3.2f, r^2 = %3.2f\n", Sr_linear, St, r_squared_linear)

Sr_power = sum((y - y_lin2).^2);
r_squared_power = (St - Sr_power)/St;

fprintf("For the power equation, Sr = %3.2f, St = %3.2f, r^2 = %3.2f\n", Sr_power, St, r_squared_power)

Sr_sat = sum((y - 1./y_lin3).^2);
St = sum((y - mean(y)).^2);
r_squared_sat = (St - Sr_sat)/St;

fprintf("For the saturated growth rate, Sr = %3.2f, St = %3.2f, r^2 = %3.2f\n", Sr_sat, St, r_squared_sat)

Sr_parabola = sum((y - y_lin4).^2);
r_squared_para = (St - Sr_parabola)/St;

fprintf("For the parabola, Sr = %3.2f, St = %3.2f, r^2 = %3.2f\n", Sr_parabola, St, r_squared_para)


%Based on inspection (just by looking at the graphs - r^2 should also justify
%this), the saturated growth rate equation is the superior curve and fits the data the
%best