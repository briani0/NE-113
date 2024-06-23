%Brian Ibitoye
%21085455
function test_A2Q1

 fprintf(' x \t  y\t r\t θ\n')

x_var = [1; 1; 0; -1; -1; -1; 0; 1; 0;];
y_var = [0; 1; 1; 1; 0; -1; -1; -1; 0;];

for i = 1:length(x_var)

    cart_to_polar(x_var(i), y_var(i))
end
end 

function A2Q1 = cart_to_polar(x,y)


if x > 0
    theta = atan(y/x);
elseif x < 0 
    if y > 0
        theta = atan(y / x) + pi;
    elseif y < 0
        theta = atan(y / x) - pi;
    elseif y == 0
        theta = pi;
    end
elseif x == 0 
    if y > 0
        theta = pi/2;
    elseif y < 0
        theta = -pi/2;
    elseif y == 0
        theta = 0;
    end
end

theta_degree = rad2deg(theta);
r = sqrt(x^2 + y^2);


fprintf('%2.0f\t %2.0f\t %2.3f\t %3.2f\n', x, y, r, theta_degree)
end