%Brian Ibitoye, 21085455

b = 1;
x = linspace(0,15,50);
plot(x, f(x,b), "LineWidth", 3)
xlabel("x")
ylabel("f(x," + num2str(b)+ ")", "Rotation", 0)
title("Graph of f(x," + b +") = ln(b + sin(x)), for when b = " + b)
legend("f(x," + b +")")