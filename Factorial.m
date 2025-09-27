clc
clear
close all
n=input("Enter a number(Integer):");
fact=1;
if n==floor(n)
    if n==0
        disp(["The factorial is",num2str(fact)]);
    elseif n<0
        disp('enter valid positive integer');
    elseif n>0
        for i=1:n
            fact=fact*i;
        end
        disp(["The factorial is",num2str(fact)]);
    end
else
    disp('Input valid Integer');
end


