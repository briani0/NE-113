%Brian Ibitoye
%21085455


A = [1 2 3;4 5 6;7 8 8];
b = [4;5;7];


function [X] = naive_gauss(A,b)

size(A) = [row,col];
n = row;
if size(row) ~= size(col)
    error("Matrix[A] is not a square matrix")
end

if size(b) ~= [row,1]
    error("Matrix dimension mismatch")
end

if abs(det(A)) < 1.0 * 10^(-10)
    error("Matrix[A] is a singular matrix")


    for k = 1
        for j = k+1:n
            for p = k:n+1
                a(j,p) = a(j,p) - a(j,k)/a(k,k)*a(k,p);
            end
        end
    end

    x = zeros(n,1);
    x(n) = aug(n,n+1)/aug(n,n);%find last x value
    for k = n-1:-1:1 %note that you have to step backwards, first xn-1 then xn-2 and so on
        until you find x1 last
        x(k) = (aug(k,n+1) - aug(k,k+1:n)*x(k+1:n))/aug(k,k);
    end
end
end