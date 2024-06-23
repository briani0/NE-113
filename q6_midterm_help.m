matrix = randi(10,6,6);

matrix2 = diag([2], 5) + diag([2 2],4)+ diag([2 2 2],3)+ diag([0 0 0 1],2) + diag([3 5 10 1 1 0]) + diag([0 0 0 1 1], 1) + diag([0 0 1 1 0], -1) + diag([0 1 1 0], -2) + diag([1 1 0],-3 ) + diag([1, 0], -4) + diag([0],-5)

%% potentially easier way from help session

A = diag([ 3 5 10], 0);
B = triu(2* ones(3,3));
C = ones(2,6);
D = zeros(1,6);
E = [A B; C; D]
