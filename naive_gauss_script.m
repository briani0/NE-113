%Brian Ibitoye
%21085455

A = [1 2 3; 4 5 6; 7 8 8];
b = [4; 5; 7];

A2 = [1 2 3; 4 5 6];
A3 = [1 2;3 4];
A4 = [1 2 3;4 5 6;7 8 9];

naive_gauss(A, b);
%naive_gauss(A2,b);
%naive_gauss(A3,b);
%naive_gauss(A4,b);

function [X] = naive_gauss(A, b)

[row, col] = size(A);
[rowB, colB] = size(b);

n = col;

if row ~= col
    error("Matrix [A] is not a square matrix");
end

if row ~= rowB
    error("Matrix dimension mismatch");
end

if abs(det(A)) < 1.0 * 10^(-10)
    error("Matrix [A] is a singular matrix");
end

aug = [A, b];

% Forward elimination
for k = 1:n-1
    for j = k+1:n
        factor = aug(j, k) / aug(k, k);
        aug(j, k:n+1) = aug(j, k:n+1) - factor * aug(k, k:n+1);
    end
end

% Backward substitution
X = zeros(n, 1);
X(n) = aug(n, n+1) / aug(n, n);

for k = n-1:-1:1
    X(k) = (aug(k, n+1) - aug(k, k+1:n) * X(k+1:n)) / aug(k, k);
end
disp(X)
end
