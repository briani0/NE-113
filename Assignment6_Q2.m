%Brian Ibitoye
%21085455

x = [1.6 2 2.5 3.2 4 4.5];
y = [2 8 14 15 8 2];


Newt_order1 = @(x) 14 + 1.428571429.*(x-2.5);
Newt_order2 = @(x) 8 + 12*(x-2) - 8.80952381.*(x-2).*(x-2.5);
Newt_order3 = @(x) 8 + 12*(x-2) - 8.80952381.*(x-2).*(x-2.5) + 1.011904762.*(x-2).*(x-2.5).*(x-3.2);
fprintf("Newton's Interpolating Polynomial:\n")
fprintf("Order 1 f(2.8) = %3.4f\nOrder 2 f(2.8) = %3.4f\nOrder 3 f(2.8) = %3.4f\n\n",Newt_order1(2.8),Newt_order2(2.8),Newt_order3(2.8))


Lagrange_order3 = @(x) 8.*(x-2.5).*(x-3.2).*(x-4)./-1.2 + 14.*(x-2).*(x-3.2).*(x-4)./0.525+15.*(x-2).*(x-2.5).*(x-4)./-0.672+8.*(x-2).*(x-2.5).*(x-3.2)./2.4;
fprintf("Lagrange Interpolation:\n")
fprintf("Order 3 f(2.8) = %3.4f\n",Lagrange_order3(2.8))


x_plot_val = linspace(1,5);
figure()
plot(x,y,'o','MarkerFaceColor','green')
hold on 
plot(x_plot_val,Newt_order3(x_plot_val),'r-',x_plot_val,Lagrange_order3(x_plot_val),'k--')
legend("Original Data points", "Third Order Newton Interpolating Polynomial", "Third Order Largrange Interpolation")
xlabel("x")
ylabel("y")
title("Accuracy of Largrange Interpolation Versus Newton Interpolation")
grid on

%We end up seeing that the third order Newton polynomial interpolation
%gives the same value as the third order Lagrange interpolation 
