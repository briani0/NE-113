%Brian Ibitoye
%21085455
%practice final q4

x = [1 3 5 7 13];
y = [800 2310 3090 3940 4755];
t_new=linspace(0,15,100);


%based on what's observed by the plots, order 4 is the best order to use
%for interpolation as it passes through all the points

%i need to get polynomials of order 4, 3, 2,1 

%order 4

p4= polyfit(x,y,4);
f4 = polyval(p4,t_new);

figure(4)
plot(t_new, f4, "-")
hold on
plot(x,y, "ko")


%order 3

p3 = polyfit(x(2:end),y(2:end), 3);
f3 = polyval(p3,t_new);

figure(3)
plot(t_new, f3, "-")
hold on
plot(x,y, "ko")

%order 2
p2 = polyfit(x(3:end),y(3: end), 2);
f2 = polyval(p2,t_new);

figure(2)
plot(t_new, f2, "-")
hold on
plot(x,y, "ko")


%order 1
p1 = polyfit(x(4: end),y(4:end),1);
f = polyval(p1,t_new);

figure(1)
plot(t_new, f, "-")
hold on
plot(x,y, "ko")