function dxdt = DERIV2(t,x)
% DERIV: Calculate the first derivative of x vs. t
% Input: t = time points, x = concentration
% Output: dxdt = first derivative of x vs. t

% Central difference for all points except the extreme points
dxdt = zeros(size(t));
dxdt(2:end-1) = (x(3:end) - x(1:end-2)) ./ (t(3:end) - t(1:end-2));

% Forward difference for the first point
dxdt(1) = (x(2) - x(1)) / (t(2) - t(1));

% Backward difference for the last point
dxdt(end) = (x(end) - x(end-1)) / (t(end) - t(end-1));