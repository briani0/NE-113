money = 55000;
interest = 0.066;
payments = 5;

amount(money, interest, payments)


function owed_money = amount(P, i, n)
%this function computes the annual payments for loans by computing the
%amount using the given inputs for the amount of money, the interest rate,
%and the number of annual payments

    fprintf('year\t  annual payment\n');
    
    %the for loop calculates the annual payment for a given year from year
    %1 to the end by doing some computational work
    for year = 1:n
        A = (P * i * (1 + i)^year) / ((1 + i)^year - 1);
        fprintf('%d \t  %6.2f\n', year, A);
    end
 
end

%Brian Ibitoye, 21085455