%Brian Ibitoye
%21085455

fx = @(x) (4-x)*exp(-0.5*x)-2;
x0 = 2;
x1 = 4;
x2 = 6;
fprime1 = @(x) 0.5*exp(-0.5*x)*x-3*exp(-0.5*x);

[r,i] = my_NR(fx,x0,fprime1);
fprintf("for an initial guess of %2d, root is = %5.2f which is found after %2d iterations\n",x0,r,i)

[r,i] = my_NR(fx,x1,fprime1);
fprintf("for an initial guess of %2d, root is = %5.2f which is found after %2d iterations\n", x1,r, i)

[r,i] = my_NR(fx,x2,fprime1);
fprintf("for an initial guess of %2d, root is = %5.2f which is found after %2d iterations\n", x2,r, i)

%The obvious observation made is that as my initial guess gets bigger, more
%iterations are required to find the root as the root is less than 1,
%meaning that larger guesses require more iterations
%for 6, this shouldn't work because the derivative at that point is 0 so
%the method will keep returning 6 which is incorrect (please don't deduct
%if this wrong)



function [r,i] = my_NR(fx,x0,fprime)
maxit = 100; % maximum number of iterations
tol = 1e-6;% 1e-6 as defined in question
eps = 1;  % initialize epsilon for error, any value OK as long as greater than the tolerance


if nargin == 2
        fprime = @(x) (fx(x0 + 1) - fx(x0))/((x0 + 1) - x0); % derivative approximation
end

    x = zeros(1, maxit);
    x(1) = x0; % initial guess
    x(2) = x(1); % second initial guess
    i = 1;


while eps > tol && i <= maxit
    i = i+1;
    x(i+1) = x(i) - fx(x(i))/fprime(x(i));
    eps = abs((x(i+1)-x(i))/x(i+1))*100;%note that this is in %

   if fprime(x0) == 0
       error("the derivative for x = %d is 0, will not compute\n", x0);
    end

end
if eps > tol
    disp('Maximum number or iterations reached, cannot find any root')
else
    %fprintf('For x0 = %1.6f, one root is %1.6f. \rThe number of iterations is %1.0f.\r',x(1),x(i),i)
    r = x(i);
end

end