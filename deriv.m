function d_dt  = deriv(t,c)

d_dt = zeros(size(t));

d_dt(1) = (-c(3)+4*c(2)-3*c(1))/(2*(t(2)-t(1)));

for i = 2:length(t)-1

    d_dt(i) = (c(i+1)-c(i-1))/(2*(t(i+1) - t(i)));

end

d_dt(end) = (3*c(end)-4*c(end-1)+c(end-2))/(2*(t(end)-t(end-1)));

end

%Brian Ibitoye
%21085455