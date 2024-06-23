% Brian Ibitoye
% 21085455

price = 0;

fuel = input("Enter a fuel type or octane number: ", 's');

switch fuel
    case {'Regular', '87'}
        price = 100.1;
    case {'Medium', '89'}
        price = 107.5;
    case {'Premium', '91'}
        price = 112.3;
    case {'High Octane', '94'}
        price = 115.9;
    case 'Diesel'
        price = 106.9;
    otherwise
        error("Invalid fuel type or octane number");
end

disp("The price for " + fuel + " is " + num2str(price) + " cents/L");
