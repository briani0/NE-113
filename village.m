%Brian Ibitoye
%21085455

R = 3;
target_V = 30;

false_position(R,target_V);


function depth = false_position(R, target_V)

f = @(h) (pi * h.^2 * (3 * R - h) / 3 ) - target_V;

    a = 0;
    b = R;

    tol = 1e-6;
    max_iter = 100;

    depth = zeros(1, max_iter + 1);

    fprintf('Finding the depth of the water in the tank:\n');
    for i = 1:max_iter
    fa = f(a);
    fb = f(b);
    
    c = b - fb * (b - a) / (fb - fa);
    
    if i > 1
        error = abs((c - depth(i-1)) / c) * 100;
        fprintf('Iteration %d: Depth = %.6f, Relative Error = %.4f%%\n', i-1, c, error);
        
        if error <= tol
            break;
        end
    else
        fprintf('Iteration %d: Depth = %.6f\n', i-1, c);
    end

    if f(c) * fa < 0
        b = c;
    else
        a = c;
    end
    
    depth(i) = c;
    end

    disp("The depth need so that the tank holds 30 m^3 of water is " + c + " m.")
end

