%Brian Ibitoye
% 21085455

f = @(x) 3*x.^5 +3.4*x.^3 + 8*x.^2 - 8.5*x-2.6;

x_val = linspace(-5,5);
y_val = f(x_val);

plot(x_val, y_val)
ylim([-10 10])
grid on

%Based on the graph that I've plotted, there are 3 roots that I can observe

the_roots = roots([3 0 3.4 8 -8.5 -2.6]);

fprintf("There are 3 real roots at x = " + the_roots(3) +", x = " + the_roots(4) + ", and x = " + the_roots(5) + ".\n")
