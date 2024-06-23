%Brian Ibitoye, 21085455

b = input("Enter a value for b: ")
x = linspace(0,15,50)
f = @(x,b) log(b+sin(x))

plot(x, f(x,b), "LineWidth", 3, "LineStyle","--", 'Color',[0 0 0])
xlabel("x")
ylabel("f(x," + num2str(b)+ ")", "Rotation", 0)
title("Graph of f(x," + b +") = ln(b + sin(x)), for when b = " + b)
legend("f(x," + b +")")