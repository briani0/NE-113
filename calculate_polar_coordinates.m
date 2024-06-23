% Assignment2_Q1.m
% Your Name
% Your Student ID


test_values = [
    1 0;
    1 1;
    0 1;
    -1 1;
    -1 0;
    -1 -1;
    0 -1;
    1 -1;
    0 0;
];

for i = 1:size(test_values, 1)
    x = test_values(i, 1);
    y = test_values(i, 2);
    [r, theta_deg] = calculate_polar_coordinate(x, y);
    fprintf('\n');
end

function [r, theta_deg] = calculate_polar_coordinate(x, y)
    % Calculate angle (theta) in radians
    if x > 0
        theta = atan(y / x);
    elseif x < 0
        theta = atan(y / x) + pi;
    else
        % x == 0
        if y > 0
            theta = pi / 2;
        elseif y < 0
            theta = -pi / 2;
        else
            % x == 0, y == 0
            theta = 0;
        end
    end

    % Calculate radius (r)
    r = sqrt(x^2 + y^2);

    % Convert theta to degrees
    theta_deg = rad2deg(theta);

    % Print results
    fprintf('For x = %d, y = %d:\n', x, y);
    fprintf('r = %f\n', r);
    fprintf('theta = %f degrees\n', theta_deg);
end
