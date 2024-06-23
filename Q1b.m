%Brian Ibitoye, 21085455

b = [1 1.2 2]';
x = linspace(0,15,50);
f = @(x,b) log(b+sin(x))

plot(x, f(x,b))
xlabel("x")
ylabel("f(x," + num2str(b)+ ")", "Rotation", 0)
legend("b = 1", "b = 1.2", "b = 2")