%Brian Ibitoye, 21085455

f = inline('sin(x/2)', 'x');
g = @(y) 2 * cos(y);
x_val = linspace(-2 * pi, 2*pi,30); %initializing x-values for the plot

%initializing my y-values for the plot
a = g(x_val);
b = f(x_val);


%the plot function for both equations
plot(x_val, a, "LineStyle", "--", "LineWidth",2, "Color", 'green')
hold on
plot(x_val, b, '-o', "LineWidth", 2, 'Color', 'magenta')
hold off

%just changing the appearence of the labels, adding legend, title and setting
%limits for the values of the x-axis
ylabel("y-values", "FontSize", 12)
xlabel('x-values', 'FontSize', 12)
legend("g(y) = 2cos(y)", "f(x) = sin(x/2)")
xlim([ -2* pi 2*pi])
title("The graphs of f(x) = sin(x/2) and g(y) = 2cos(y) with respect to x", "FontSize", 12)