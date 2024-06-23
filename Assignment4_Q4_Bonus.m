%Brian Ibitoye
%21085455

func = @(x) x^2+4*x-7;
xl = -5;
xu = 5;
es = 0.00001;
maxit = 100;


r = falsepos(func,xl,xu,es,maxit);
%the function chosen is a random one that i quickly thought of before submitting
%this
%I see that it is returning the right root given the domain for this test
%and i think that this work properly!

function root = falsepos(func, xl, xu, es, maxit)
    if func(xl) * func(xu) > 0
        error("No sign change, will not determine root");
    end

    iter = 1;
    while abs(xu - xl) > es * (xu + xl) / 2
        xm = (xl + xu) / 2;
        if abs(func(xm)) < es
            break;
        end
        if func(xl) * func(xm) < 0
            xu = xm;
        else
            xl = xm;
        end
        iter = iter + 1;
        if iter > maxit
            fprintf('Maximum iterations exceeded.\n');
            return;
        end
    end
    root = xm;
    disp("the root obtained for this function is " + root)
end
