%Brian Ibitoye
%21085455

f = @(x) x - 1 - 0.5*sin(x);

x0 = pi/2;

TS1 = @(x) f(x0) + (x - x0)*(1 - 0.5*cos(x0));
TS2 = @(x) TS1(x) + ((x - x0).^2)/2*(-sin(x0));
TS3 = @(x) TS2(x) + ((x - x0).^3)/6*(-cos(x0));
TS4 = @(x) TS3(x) + ((x - x0).^4)/24*(sin(x0));


x_values = linspace(0, pi, 100);
y_taylor1 = TS1(x_values);
y_taylor2 = TS2(x_values);
y_taylor3 = TS3(x_values);
y_taylor4 = TS4(x_values);


error_t1 = abs(f(x_values) - y_taylor1);
error_t2 = abs(f(x_values) - y_taylor2);
error_t3 = abs(f(x_values) - y_taylor3);
error_t4 = abs(f(x_values) - y_taylor4);


figure;
subplot(2, 2,1);
plot(x_values, error_t1);
title('Error Plot for Taylor Series - Order 1');
subplot(2, 2, 2);
plot(x_values, error_t2);
title('Error Plot for Taylor Series - Order 2');
subplot(2, 2, 3);
plot(x_values, error_t3);
title('Error Plot for Taylor Series - Order 3');
subplot(2, 2, 4);
plot(x_values, error_t4);
title('Error Plot for Taylor Series - Order 4');


max_error = [max(error_t1), max(error_t2), max(error_t3), max(error_t4)];
for i = 1:length(max_error)
    if max_error(i) > 0.015
        order = i;
    end
end

fprintf('The highest-order Taylor series expansion with error < 0.015 is order %d.\n', order);