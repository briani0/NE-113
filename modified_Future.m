function future_worth = Future(initial_invest, i, tot_years)
    fprintf('Year\tFuture Worth\n');
    fprintf('----\t-------------\n');
    
    years = 0:tot_years;
    future_worth = initial_invest * (1 + i).^years;
    
    for year = 0:tot_years
        fprintf('%d\t%6.2f\n', year, future_worth(year + 1));
    end
end

tot_years = 11;
initial_invest = 10000;

figure;
hold on;

y = Future(initial_invest, 0.04, tot_years);
plot(0:tot_years, y, '-o', 'DisplayName', 'Investment 1');

z = Future(initial_invest, 0.08, tot_years);
plot(0:tot_years, z, '-s', 'DisplayName', 'Investment 2');

hold off;

xlabel('Years');
ylabel('Future Worth');
title('Future Worth of Investments Over Time');
legend('show');
grid on;
