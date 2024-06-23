%Brian Ibitoye
%21085455
clc;
clf;

x=[1 4 4 1];
y=[1 1 4 4];
[xt, yt]=Rotate2D(45,x,y);

plot(x,y,'bo','MarkerSize',10,'MarkerFaceColor','b');
hold on;

plot(xt,yt,'ro','MarkerSize',10,'MarkerFaceColor','r');

xlabel('x');
ylabel('y');
ylim([0 10]);
xlim([-5 5]);
title('2D Rotated Points using a Rotation Matrix');
legend("inital points", "rotated points");

function [xr, yr] = Rotate2D(thetad, x, y)

Rotation_matrix = [cosd(thetad) -sind(thetad); sind(thetad) cosd(thetad)];

rotated_points = Rotation_matrix * [x; y];

xr = rotated_points(1,1:end);
yr = rotated_points(2,1:end);


end