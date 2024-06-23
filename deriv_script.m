%Brian Ibitoye
%21085455


c = [3.52, 2.48, 1.75, 1.2, 0.87, 0.61];
t = [10, 20, 30, 40, 50, 60,];

d_dt = deriv(t,c);

logd_dt = log(-d_dt);
log_c = log(c);


plot(log_c, logd_dt, "k")
title(" log(−dc/dt) vs. log(c)");
xlabel("log(c)");
ylabel("log(-dc/dt)");
hold on

%My estimation of k is about 0.05 and n is 0.9

%-----------------------BONUS--------------------------%

 s = polyfit(log_c,logd_dt,1);


n = s(1);
k = exp(s(2));

disp(['k = ', num2str(k)]);
disp(['n = ', num2str(n)]);

logk = log(k);
logn = log(n);

plot(log_c, logk+ n*log_c,"r")
legend("from centered diff", "from regresson")
