A = randi(50,5,3);
%A_transpose = zeros(size(A,2), size(A,1));

for i = 1:size(A,1)
    for j = 1:size(A,2)

A_transpose(j,i) = A(i,j)

    end
end
