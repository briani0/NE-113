
disp("enter any number (negative value will break the loop)")

run_sum = 0;

while true

weight = input("enter a number: ");

if weight < 0

    break
end

run_sum = run_sum + weight;

end
disp("the total sum is: " + run_sum)