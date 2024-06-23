%Brian Ibitoye
%21085455


%A1 = [6 15 55;25 55 225;55 225 979];
%A2 = [6 15 55;15 55 225];
A3=[6 15 55;15 55 225;55 225 979];
b = [4;5;7]

disp("My function's answer")
my_chol(A3)
disp("choleksy function below")
U = chol(A3)

disp("Ax = b")
y = U';
z = y\b;
x = U\z


disp("A\b")
[x] = A3\b

function decomp = my_chol(A)

[row,col] = size(A);

 if ~ issymmetric(A)
    error("Matrix provided isn't symmetric")
 elseif row ~= col
     error("Matrix is not square")
 end


n = length(A);
U = zeros(n,n);


for i = 1:n
    U(i,i) = sqrt(A(i,i) - sum(U(1:i-1,i).^2));
    for j = (i+1):n
        U(i,j) = (A(i,j) - sum(U(1:i-1,i).* U(1:i-1,j)))/(U(i,i));
    end
end

decomp = U;
end


