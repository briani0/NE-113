%Brian Ibitoye
%21085455

 w = zeros(3,3);

 for i = 1:3
     for j = 1:3
             w(i,j) = i+j;
             if i == j
                 w(i,j) = 0;
         end
     end
 end

 w