%Brian Ibitoye
%21085455

choice = menu ("Choose a fuel type or octane number", "Regular (87) ", "Medium (89)", "Premium (91)", "High Octane (94)", "Diesel");

price = 0;

switch choice
    case 1
        fuel = 'Regular';
        price = 100.1;
    case 2
        fuel = 'Medium';
        price = 107.5;
    case 3
        fuel  = 'Premium';
        price = 112.3;
    case 4
        fuel = 'High Octane';
        price = 115.9;
    case 5
        fuel = 'Diesel';
        price = 106.9;
    otherwise
        error("Invalid fuel type or octane number");
end

disp("The price for " + fuel + " is " + num2str(price) + " cents/L");
