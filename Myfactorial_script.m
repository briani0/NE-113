%Brian Ibitoye
%21085455

usr_input = input("Would you like to provide a number? ", 's');

if usr_input == "yes" | usr_input == "y"
    n = input("Enter a positive number: ");
    if isscalar(n) && n > 0 && int8(n) == n 
        b = The_factorial(n);
        h = factorial(n);

        disp("The factorial for " + n + "! from our method is " + b)
        disp("and " + n + "! from the builtin matlab function is " + h)
    else
        error("Input must be a positive scalar integer");
    end


elseif usr_input == "no" | usr_input == "n"
     n = 10;
     b = The_factorial(n);
     h = factorial(n);

    disp("The factorial for " + n + "! from our method is " + b)
    disp("and " + n + "! from the builtin matlab function is " + h)
    
else
    disp("Invalid input entered")
end

%create loop outside of function so I can call on it later on

function m = The_factorial(n)
m  = 1;
    for k = 1:n

        m = m*k;
    end
end 

