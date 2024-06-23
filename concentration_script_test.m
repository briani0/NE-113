function concentration_script
    % Define the constants
    K1 = 4e-4;
    K2 = 3.7e-2;
    ca0 = 50;
    cb0 = 20;
    cc0 = 5;
    cd0 = 10;

    % Define the system of nonlinear equations
    function F = myfun_conc(x)
        x1 = x(1);
        x2 = x(2);
        ca = ca0 - 2*x1 - x2;
        cb = cb0 - x1;
        cc = cc0 + x1 + x2;
        cd = cd0 - x2;
        F = [cc^2/(ca*cb) - K1;
             cc/(ca*cd) - K2];
    end

    % Define the Jacobian
    function J = myjac_conc(x)
        x1 = x(1);
        x2 = x(2);
        ca = ca0 - 2*x1 - x2;
        cb = cb0 - x1;
        cc = cc0 + x1 + x2;
        cd = cd0 - x2;
        J = [(-2*cc^2/ca^2 + cc/cb)/ca, (-cc^2/ca^2 + cc/cd)/ca;
             (2*cc/ca - 1/cb), (cc/ca - 1/cd)];
    end

    % Initial guess
    x0 = [0.1; 0.1];

    % Solve the system using Newton's method
    options = optimoptions('fsolve','SpecifyObjectiveGradient',true,'Display','iter');
    %x = fsolve(@myfun_conc,x0,options);

    % Calculate the concentrations
    ca = ca0 - 2*x(1) - x(2);
    cb = cb0 - x(1);
    cc = cc0 + x(1) + x(2);
    cd = cd0 - x(2);

    % Display the results
    fprintf('x1 = %.2f, x2 = %.2f, ca = %.2f, cb = %.2f, cc = %.2f, cd = %.2f\n', x(1), x(2), ca, cb, cc, cd);
end
