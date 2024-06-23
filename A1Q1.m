init_invest = 100000;
tot_years = 11;

f1 = future_worth(init_invest, 0.04, tot_years);

subplot(2,1,1)
plot(0:tot_years, future_worth(init_invest, 0.04, tot_years), '-o', "LineWidth", 3, "Color", [0 0 0])
xlim([0 tot_years])
grid("on")
title("Future Worth of 4% Investment")
xlabel("Number of years")
ylabel("Future Worth ($)")

subplot(2,1,2)
plot(0:tot_years, future_worth(init_invest, 0.08, tot_years), '-o', "LineWidth", 3, "Color", [0 0 1])
xlim([0 tot_years])
grid("on")
title("Future Worth of 8% Investment")
xlabel("Number of years")
ylabel("Future Worth ($)")

function final_invest = future_worth(P, i, n)
%this function takes the inputs of inital investment, interest rate, and
%number of years to return the value of the investment for each year up
%until the final year

fprintf('year\tfuture worth\n')

%initializing the year value and the creating a function that calculates
%the investment
year = 0:n;
final_invest = P * (1+i).^year;

%the for loop returns the values for the investment corresponding to a
%specific year
for year = 0:n
fprintf('%d\t%5.2f\n', year, final_invest(year+1))
    
    %for years = 0:n
        %fprintf('%0.0f\t%9.2f\n', years, final_invest)

end
end
%Brian Ibitoye, 21085455

