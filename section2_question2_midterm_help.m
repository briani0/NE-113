
quad(0,5,6);

function quadratic_solver = quad(a,b,c)

if a == 0
    root = -(c/b);
    disp("the root is " + root)

    root_diff = -(b/(2*a));
    disp("root_diff is " + root_diff)

elseif b^2 - 4*a*c < 0
    root1 = (-b + sqrt(b^2 - 4 * a * c))/(2 * a);
    root2 = (-b - sqrt(b^2 - 4 * a * c))/(2 * a);

    disp("the first root is " + root1)
    disp("the second root is " + root2)

elseif b^2 - 4*a*c > 0
    root1 = (-b + sqrt(b^2 - 4 * a * c))/(2 * a);
    root2 = (-b - sqrt(b^2 - 4 * a * c))/(2 * a);

    display("the first root is " + root1)
    display("the second root is " + root2)

end


end