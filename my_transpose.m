%Brian Ibitoye
%21085455
function answer = my_transpose(A)

[m,n] = size(A); 

answer = zeros(n,m);

for i  = 1:n

    for j = 1:m

        answer(i,j) = A(j,i);
    end

end
end

