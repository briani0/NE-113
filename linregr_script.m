%Brian Ibitoye
%21085455

x = [10 20 30 40 50 60 70 80];
y = [25 70 380 550 610 1220 830 1450];

[pts, coefficient, err] = linregr2(x,y);

subplot(2,1,1)
plot(x,y,"o", 'MarkerSize',7, 'MarkerFaceColor','green')
yfit = pts(1) + pts(2)*x ;
hold on
plot(x, yfit)
xlabel("x-axis")
ylabel("y-axis")
title('Linear Fit and Data Points');
legend("Data Points", "Linear fit")

subplot(2,1,2)
residual = y-yfit;
plot(x,residual, "Color","blue", "LineStyle",":", "LineWidth",2)
ylabel('residual values')
xlabel('x-axis')
title('the residuals (difference between data points and fitted values')
legend('residual')


function [a,r2,syx] = linregr2(x,y)

if length(x) ~= length(y)

    error("number of data points for x and y don't match")

else

n = length(x);

x_sum = sum(x);
y_sum = sum(y);
x_square = sum(x.^2);
y_square = sum(y.^2);
xy = sum(x.*y);

a1 = (n * xy - (x_sum * y_sum))/(n * x_square - x_sum^2);

a0 = (y_sum/n) - a1 * (x_sum/n);

a2=(n*sum(x.*y)-sum(x)*sum(y))/(n*sum(x.^2)-sum(x)^2);
    %intercept
a3=sum(y)/n-a2*sum(x)/n;

a = [a0,a1,a2,a3];

r = ((n * xy - x_sum * y_sum)/(sqrt(n * x_square - x_sum^2) * sqrt(n * y_square - y_sum^2)));
r2 = r^2;

sr = sum((y-a0-a1*x).^2);

syx = sqrt((sr)/(n-2));

end


end