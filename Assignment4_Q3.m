%Brian Ibitoye
%20185455

f = @(x) sin(x) - x.^3;

mybisection(f, 0.5,1);

function root=mybisection(f,xl,xu)
%this function implements the bisection method. 
% it will return the root for function f, when it is 
%provided with a suitable bracket [xl,xu].


%check that xl and xu bracket root 
if sign(f(xl))==sign(f(xu))
    error("a suitable bracket is not provided")
end


%actual bisection method
%its an iterative method so it needs
maxit=100;%maximum number of iteration
tol=1e-6;%tolerance

%this involves:
%finding mid point
xmid=(xl+xu)/2;

%init iteration and error
iter=1;
err=0.02;%make this a big number so it runs

    while err>tol && iter<maxit
    %keep old mid point
    old_xmid=xmid;

    %finding new bracket
    if sign(f(xl))==sign(f(xmid))%then right bracket is next one
        xl=xmid;
    else
        xu=xmid;
    end
    %new xmid
    xmid=(xl+xu)/2;

    %have we found the root? if not, keep going
    %compare old xmid to new xmid for error
    err=abs((xmid-old_xmid)/xmid);

    %update iter
    iter=iter+1;

    if err < 0.02
        break;
    end
    
    end

 %by this point how do we figure out if we have found root?
 if iter==maxit
     fprintf("We have reached maximum number of iteration of %d \n", maxit);
     fprintf("No root was found between xl=%2.5f and xu=%2.5f  \n", xl,xu);
 else
     root=xmid;
      fprintf("After %d  iterations, root was found to be %2.5f\n", iter,root);
      fprintf("The value of the function at this root is %2.5f\n", f(root));
 end
end