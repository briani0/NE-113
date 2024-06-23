%Brian Ibitoye
%21085455


%easy to make A using diag!
A=diag(2.04*ones(4,1))+diag(-1*ones(3,1),1)+diag(-1*ones(3,1),-1);
b=[40.8 0.8 0.8 200.8]';

%now to find each T based on Cramer rule we have
%Ti=|Ai|/|A| where in Ai, column i is replaced with b

detA=det(A);%calculate this separately since needed each time. 

T = zeros(1,4);
for i = 1:4

    Ai = A;
    Ai(:,i)=b

    Ti = det(Ai) / det(A);
    T(i) = Ti
end

%bonus! Ask me at the end of class! 

%ofcourse we could have done 
T=A\b;%!
hold on
plot([40 T1 T2 T3 T4 200],'k--*')
plot([40 T' 200],'r^', 'MarkerSize',10)
xlabel('x')
ylabel('T(x)') 
title('Temperature distribution in a rod')

