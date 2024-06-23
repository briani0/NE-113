% Brian Ibitoye, 21085455

x = linspace(0, 2*pi, 30);

subplot(2,1,1)
plot(x, sin(x), "k-+", x, cos(x), "k:")
xlabel("x(between 0 and 2\pi)")
xlim([0 2*pi])
legend("sin(x)", "cos(x)")

subplot(2,1,2)

yyaxis left
plot(x, 2 .* sin(x) .* cos(x), "k")
xlabel("x(between 0 and 2\pi)")
xlim([0 2*pi])
ylabel("2sin(x)cos(x)")
ylim([-1 1]);
ax = gca;
ax.YAxis(1).Color = 'k';

yyaxis right
plot(x, sin(x)./ cos(x),"k:")
xlabel("x(between 0 and 2\pi)")
xlim([0 2*pi])
ylabel("sin(x)/cos(x)", "Color", [0 0 0])
ylim([-20 20]);
ax = gca;
ax.YAxis(2).Color = 'k';

legend("2sin(x)cos(x)", "sin(x)/cos(x)")
