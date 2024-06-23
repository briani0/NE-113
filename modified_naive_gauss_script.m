%Brian Ibitoye
%21085455

A = [1 2 3; 4 5 6; 7 8 8];
b = [4; 5; 7];

pivot_gauss(A,b)

function x = pivot_gauss(A,b)
% GAUSS_PIVOT(A,b) returns the solution of [A][x] = [b] using Gauss
% elimination with partial pivoting
% A is a square matrix
% b is a column vector
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
aug = [A b];
n = length(b); % determine the dimension of A and b
%------------- Forward Elimination ---------------------
%find index and value of pivot element
%decide how to determine if pivoting needs to happen
for k = 1:n-1 
    [~, i] = max(abs(aug(k:n,k)));
    pivot_row = i + k - 1;
    
    % swap rows
    if pivot_row ~= k
        aug([k,pivot_row], :) = aug([pivot_row, k], :);
    end
    
    % elimination
    for i = k+1:n
        factor = aug(i,k)/aug(k,k);
        aug(i,:) = aug(i,:) - factor*aug(k,:);
    end
end

%------------ Back Substitution ------------------------
x = zeros(n,1);
x(n) = aug(n,n+1)/aug(n,n);
for k = n-1:-1:1
x(k) = (aug(k,n+1) - aug(k,k+1:n)*x(k+1:n))/aug(k,k);
end
end