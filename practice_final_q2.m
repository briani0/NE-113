%Brian Ibitoye
%21085455


%test for this data
xtest=[400 70 45 2 0.3 0.16];
ytest=[270 82 50 4.8 1.45 0.97];
bval=powerfit(xtest,ytest); %bval(1) is slope, bval(2) is intercept
f_regr = bval(2) + bval(1).*xtest;

fprintf("the value of alpha = %2.4f and beta = %2.4f\n", exp(bval(2)), bval(1))


%polyfit and polyval

poly_num = polyfit(log(xtest), log(ytest),1);
f_poly = polyval(poly_num, log(xtest));
valx = linspace(0,25,100);

fprintf("from polyfit, the values of alpha = %2.4f and beta= %2.4f\n",exp(poly_num(2)), poly_num(1))

figure(1)
title("linear model against original data")
plot(log(xtest),log(ytest), 'ko')
hold on
plot(log(xtest), f_poly)


figure(2)
title("original form")
plot(valx, exp(bval(2)).*valx.^bval(1), 'r-')
hold on
plot(xtest,ytest,"ko")
xlim([0 10])


function b = powerfit(xin,yin)
% linregr: linear regression curve fitting
% b = powerfit(x,y): Least squares fit of straight
% line to transformed data
% input:
% x = independent variable
% y = dependent variable
% output:
% b = vector of slope b(1) and intercept b(2) of line

if length(xin) ~= length(yin)

    error("the length of the vectors don't match")

end
x = log(xin);
y = log(yin);

n = length(x);

a1 = (n*sum(x.*y) - sum(x)*sum(y))/(n*sum(x.^2) - sum(x)^2); %slope

a0 = sum(y)/n - a1 * (sum(x)/n); %intercept

b = [a1,a0]; %first term is slope, second is intercept

end