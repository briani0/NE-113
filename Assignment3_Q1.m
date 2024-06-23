%Brian Ibitoye
%21085455

%flow and concentration
Q01 = 5;
Q03 = 8;
Q31 = 1;
Q23 = 1;
Q34 = 8;
Q44 = 11;
Q24 = 1;
Q12 = 3;
Q25 = 1;
Q15 = 3;
Q55 = 2;
Q54 = 2;



A = [-6 0 1 0 0;0 -1 9 0 0;3 -3 0 0 0;3 1 0 0 -4;0 1 8 -11 2];

b = [-50;160;0;0;0];

disp("The concentration values are: ")

x = A\b;

for i = 1:5;

    disp("c" + (i) + " = " + x(i))


end