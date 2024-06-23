%Brian Ibitoye - bonus
% 21085455

x=[1,4,5,6];
fx=[0,1.386294,1.609438,1.791759];

[poly] = newt_inter(x,fx);

function coefficients = newt_inter(x,y)

n = length(x)-1;
coefficients = zeros(n,1);

 F = zeros(n + 1, n + 1);
    F(:, 1) = y';

    for j = 2:n + 1
        for i = 1:n + 1 - j + 1
            F(i, j) = (F(i + 1, j - 1) - F(i, j - 1)) / (x(i + j - 1) - x(i));
        end
    end

    coefficients(1) = F(1, 1);
    for j = 2:n + 1
        coefficients(j) = F(1, j);
    end


end

function coefficients2 = lagrange_interp(x,y)

xinter = linspace(min(x), max(x), 100);

    y_ = zeros(size(xinter));
    
    for i = 1:length(xinter)
        y_i = 0;
        
        for j = 1:length(x)
            L_j = 1;
            for k = 1:length(x)
                if k ~= j
                    L_j = L_j .* (xinter(i) - x(k)) / (x(j) - x(k));
                end
            end
            
            y_i = y_i + y(j) * L_j;
        end
        
        y_(i) = y_i;

    end

end
