%Brian Ibitoye
%21085455
s = 1.2;
t = 1.2;

f = -x.^2+x+0.75-y;
f_2 =x.^2-y-5.*x.*y;

[solu,itera,valu,err0] = newton(@my_function, @my_jacobian, [s;t]);

fprintf("Using the NR method, with an initial guess of %2.2f for x and %2.2f for y, the solution was found to be x= %2.2f and y= %2.2f after %2.2f iterations and with an error of %2.2f%% \n",s,t,solu(1),solu(2),itera,err0)


mat_solve = fsolve(@my_function, [s;t]);
fprintf("Using fsolve, with an initial guess of %2.2f for x and %2.2f for y, the solution was found to be x= %2.2f and y= %2.2f\n",s,t,mat_solve(1),mat_solve(2))


function F = my_function(x)

F = [-x(1).^2+x(1)+0.75-x(2); x(1).^2-x(2)-5.*x(1).*x(2)];

end


function J = my_jacobian(x)

J = [-2.*x(1)+1 -1; 2.*x(1)-5.*x(2) -5.*x(1)-1];

end


function [sol,iter,func_val,err] = newton(f,Jac,x0)
% Solve a system of nonlinear equations f(x) = 0,
%Jac is the Jacobian
% x0 is a vector of the initial guesses
maxiter = 50;
tol = 0.0001;
es = 1;
xold = x0;
i = 0;
while es > tol && i < maxiter
    i = i+1; % increase the number of iterations
    Ja = Jac(xold); % calculate the Jacobian at {xi} (i.e. xold)
    xnew = xold - inv(Ja)*f(xold); % calculate {xi+1} (i.e. xnew)
    es = max(abs((xnew-xold)./xnew)); % determine the updated epsilon
    xold = xnew;
end
if es > tol
    disp("Maxium number of iterations reached, cannot find solution")
    disp("Change the initial guesses")
    sol = [];
    iter = maxiter;
else
    sol = xnew;
    iter = i;
    func_val=f(sol);
    err = es;
end
end