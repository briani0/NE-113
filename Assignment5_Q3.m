%Brian Ibitoye
%21085455

% System 1
figure
fimplicit(@(x,y) y + x.^2 - 10, [-20 20]);
hold on
fimplicit(@(x,y) y + x - 15, [-20 20]);
title('System 1 - A Parabola and a Line')
xlabel('x')
ylabel('y')
legend("y = -x^2+10", "y = -x+15")
grid on
hold off

fprintf('System 1 has zero solutions.\n')

%System 2
figure
f3 = fimplicit(@(x,y) y.^2 + x.^2 - 26, [-10 10]);
hold on
f4 = fimplicit(@(x,y) 25*y.^2 + 3*x.^2 - 100, [-10 10]);
title('System 2 - An Ellipse and a Circle')
xlabel('x')
ylabel('y')
legend()
grid on
hold off

fprintf('System 2 has four solutions.\n')

F = @(x) [x(1)^2+x(2)^2-26; 25*x(2)^2+3*x(1)^2-100];
[x_sol] = fsolve(F, [10 10]);
[x_sol2] = fsolve(F, [5 -5]);
[x_sol3] = fsolve(F, [-5 -5]);
[x_sol4] = fsolve(F, [-10 10]);


fprintf("the solutions are:\n x1 = %5.2f y1 = %5.2f\n x2 = %5.2f y2 = %4.2f\n x3 = %4.2f y3 = %4.2f\n x4 = %4.2f y4 = %5.2f\n", x_sol(1), x_sol(2), x_sol2(1), x_sol2(2), x_sol3(1), x_sol3(2), x_sol4(1), x_sol4(2))

