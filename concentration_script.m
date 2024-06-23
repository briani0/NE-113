%Brian Ibitoye
%21085455

[solution] = newtonFD(@myfun_conc,@myjacFD,[1;1]);

ca0 = 50;
cb0 = 20;
cc0=5;
cd0 = 10;

ca = ca0-2*solution(1)-solution(2);
cb = cb0-solution(1);
cc= cc0+solution(1)+solution(2);
cd = cd0-solution(2);

fprintf("x1 = %2.4f, x2 = %2.4f, ca = %2.4f, cb = %2.4f, cc = %2.4f, cd = %2.4f\n",solution(1),solution(2),ca,cb,cc,cd)

[solver] = fsolve(@myfun_conc, [0.5 0.5]);

fprintf("x1 (using fsolve) = %2.4f, x2 (using fsolve) = %2.4f\n", solver(1), solver(2))

%The fsolve values that I obtained are basically the same as what I
%obtained from NR, the only difference may be the rounding as difference of
%+- 1 on the final decimal place


function f = myfun_conc(x)

k1 = 4e-4;
k2 = 3.7e-2;
ca0 = 50;
cb0 = 20;
cc0=5;
cd0 = 10;

ca = ca0-2*x(1)-x(2);
cb = cb0-x(1);
cc= cc0+x(1)+x(2);
cd = cd0-x(2);

o = (cc)/((ca)^2 * cb) - k1;
p = (cc)/((ca) * cd) - k2;

f = [o;p];

end


function JacobianFD = myjacFD(f,x,eps)

a = (f([x(1)+eps*x(1),x(2)]) - f([x(1),x(2)]))/(eps*x(1));
b = (f([x(1),x(2)+eps*x(2)]) - f([x(1),x(2)]))/(eps*x(2));

 JacobianFD = [a,b];

end

function [sol,iter] = newtonFD(f,JacobianFD,x0)
    % Solve a system of nonlinear equations f(x) = 0, 
    %Jac is the Jacobian 
    % x0 is a vector of the initial guesses
    maxiter = 100; % maximum number of iterations before exiting the program
    tol = 1e-4; % tolerance for convergence
    eps = 1; % initial epsilon, any value OK as long as greater than the tolerance
    xold = x0; % initial guess
    i = 0; % initialize the number of iterations
 
    while eps > tol && i <= maxiter
        i = i+1; % increase the number of iterations
        Ja = JacobianFD(f,xold,1e-6); % calculate the Jacobian at {xi} (i.e. xold)
        xnew = xold - inv(Ja)*f(xold); % calculate {xi+1} (i.e. xnew)
        eps = max(abs((xnew-xold)./xnew)); % determine the updated epsilon
        xold = xnew;
    end
    if eps > tol
        disp('Maxium number of iterations reached, cannot find solution')
        disp('Change the initial guesses')
        sol = [];
        iter = maxiter;
    else
        sol = xnew;
        iter = i;
    end

end