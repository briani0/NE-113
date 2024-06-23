%Brian Ibitoye
%21085455

% test for this data
xtest = [3 4 5 7 8 9 11 12];
ytest = [1.6 3.6 4.4 3.4 2.2 2.8 3.8 4.6];
[coefficient,c] = polyreg(xtest,ytest);

fprintf("The values of a0 = %2.2f, a1= %2.2f, a2= %2.2f\n", coefficient(1), coefficient(2), coefficient(3))

%part c
fprintf("the condition of the matrix is %2.2f\n", c)
%condition is much greater than 1, so not a good way to fit data of degree
%m

function [p, condition] = polyreg(x,y)

if length(x) ~= length(y)

    error("the length of the two vectors are not the same, please fix")


end
% polyreg(x,y):
% Polynomial regression of order 2
% input:
% x = independent variable
% y = dependent variable
%
% output:
% p = vector of coefficients
%if length of x and y not same raise error

n = length(x);

xsum = sum(x);
x_square = sum(x.^2);
x_cube = sum(x.^3);
x_quart = sum(x.^4);
ysum = sum(y);
xy_sum = sum(x.*y);
x_square_y = sum((x.^2).*y);

x_matrix = [n xsum x_square;xsum x_square x_cube; x_square x_cube x_quart];
y_matrix = [ysum;xy_sum; x_square_y];

p = x_matrix\y_matrix;
condition = cond(x_matrix, 'fro');
end