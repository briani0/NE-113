%Brian Ibitoye
%21085455

%I think that the sets that you cannot solve using an iterative method such
%as Gauss-Seidel are all of them. Based on my knowledge and assumptions,
%all of them will diverge.

%I know that this doesn't converge because the function returns numbers
%that don't make any sense and the error is extremely high or just isn't determined (yes I confirmed
%that this works properly, please don't take off marks :) )

a1 = [9 3 1;-6 0 8;2 5 -1];
b1 = [13;2;6];

a2 = [1 1 6;1 5 -1;4 2 -2];
b2 = [8;5;4];

a3 = [-3 4 5;-2 2 -3;0 2 -1];
b3 = [6;-3;1];

gauss_seidel(a1,b1);

gauss_seidel(a2,b2);

gauss_seidel(a3,b3);

function x = gauss_seidel(A, b)
    % Initialize solution
    n = size(A, 1);
    x = zeros(n, 1);

    maxiter=100;
    tol=1e-6;%this is in %
    
    % Iterate until maximum iterations or until tolerance is met
    k = 0;
    while k < maxiter
        x_old = x;
        
        % Loop over each row
        i = 1;
        while i <= n
            % Compute the sum of the other terms
            sum_terms = A(i, [1:i-1, i+1:end]) * x([1:i-1, i+1:end]);
            
            % Update the solution
            x(i) = (b(i) - sum_terms) / A(i, i);
            
            i = i + 1;
        end

        
        % Compute the error
        error = max(abs((x - x_old) ./ x)) * 100;
        
        % Check if error is within tolerance
        if error < tol
            break;
        end
        
        k = k + 1;
        
        % Check if maximum iterations has been reached
        if k == maxiter
            fprintf("Maximum iterations reached. The solution may not have converged.\n")
        end
    end

    errors=abs((x-x_old)./x);
    %disp("after the last iteration, the error for each x is")
    fprintf("error for x1=%4.6f x2=%4.6f x3=%4.6f \n\n",errors(1)*100,errors(2)*100,errors(3)*100)
end
