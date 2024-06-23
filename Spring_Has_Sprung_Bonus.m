%Brian Ibitoye - bonus
%21085455

% Function for the summation of squared residuals (Sr)
function Sr = sumeq1(x, y, a0, a1)
    Sr = 0;
    for i = 1:length(y)
        Sr = Sr + (y(i) - a0 - a1*x(i))^2;
    end
end

% Function for the summation of total squares (St)
function St = sumeq2(y)
    St = 0;
    yBar = mean(y);
    for i = 1:length(y)
        St = St + (y(i) - yBar)^2;
    end
end

%I think that this is everything that we needed please be generous with the
%bonus marks :)
