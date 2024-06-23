%Brian Ibitoye
%21085455

fm =  @(m) sqrt((9.81 .* m)./(0.25)) .* tanh((sqrt((9.81 .* 0.25)./m)).* 4)-36;

m_num = linspace(0,180,100);
yval = fm(m_num);
xl = 140;
xu = 150;

plot(m_num,yval)
xlabel("values of mass")
ylabel("f(m)")
title("f(m) vs mass")

%My guess for m that makes f(m) = 0 is roughly 1.45 kg
%a suitable value for xl is 140 and xu is 150"

fprintf("for values xl = " + xl + " and xu = " + xu + " bisection found the root to be " + mybisection(fm,xl,xu) + '. \n');


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
err=100;%make this a big number so it runs

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
    end

 %by this point how do we figure out if we have found root?
 if iter==maxit
     fprintf("We have reached maximum number of iteration of %d \n", maxit);
     fprintf("No root was found between xl=%2.5f and xu=%2.5f  \n", xl,xu);
 else
     root=xmid;
      %fprintf("After %d  iterations, root was found to be %2.5f\n", iter,root);
      %fprintf("The value of the function at this root is %2.5f\n", f(root));
 end
end