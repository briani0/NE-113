tot_years = 11;
init_invest = 100000;

y = future_worth(initial_invest,0.04, tot_years);
plot(years, y, "LineStyle",":", "LineWidth", 3)


function future_worth(p, i, n)
    fprintf('year \t  future worth\n')

    for years = 0:n
        future_worth = p * (1 + i).^years;
        fprintf('%0.0f\t  %6.2f\n', years, future_worth)
        plot(years, future_worth, "LineStyle",":", "LineWidth", 3)
    end
    xlabel("Number of years");
    ylabel("Future worth ($)");
    title("Future Worth of Investment")
    xlim([0 n]);
    ylim([100000  150000]);
    legend('show');

end


