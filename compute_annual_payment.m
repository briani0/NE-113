% Test with P = $55,000 and an interest rate of 6.6% (i=0.066)
loan_amount = 55000;
interest_rate = 0.066;

% Compute and display results for n=1,2,3,4,5
compute_payment(loan_amount, interest_rate, 5);


function annual_payment = compute_payment(P, i, n)
    fprintf('Year\tAnnual Payment\n');
    fprintf('----\t---------------\n');

    for year = 1:n
        A = P * (i * (1 + i)^n) / ((1 + i)^n - 1);
        fprintf('%d\t%12.2f\n', year, A);
    end
    
    annual_payment = A;
end

