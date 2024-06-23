%Brian Ibitoye
%21085455


R = 3;
target_V = 30;

fx = @(h) (pi * h.^2 * (3 * R - h) / 3 ) - target_V;
fprime = @(h) (pi*h)*(6-h);
fo = 3;

newt_raph(fx,fo,fprime);



function [x,i] = newt_raph(fx,fo,fprime)
%maxit = 2; % maximum number of iterations
%tol = 1;%.01 % as defined in question
%eps = 2;  % initialize epsilon for error, any value OK as long as greater than the tolerance


if nargin == 2
        fprime = @(x) (fx(fo + 1) - fx(fo))/((fo + 1) - fo); % derivative approximation
end

    %x = zeros(1, maxit);
    x(1) = fo; % initial guess
    x(2) = x(1); % second initial guess

for i = 1:3
    x(i+1) = x(i) - fx(x(i))/fprime(x(i));
    eps = abs((x(i+1)-x(i))/x(i+1))*100;%note that this is in %
    fprintf("\nIteration " + i + ": error = " + eps+ "\n")
end

end

%I think from what I can see, the first error is much greater in the newton
%method but the error decayed pretty quickly and faster than the false
%position method