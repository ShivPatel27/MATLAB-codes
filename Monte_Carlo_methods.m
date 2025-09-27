clc
clear
close all

fx=@(x) x.^2;
n=20000;
t=1:n;
I=1:n;

for i=1:n
    f=0;
    for j=1:i
        xi=rand(1);
        f=f+(1/i)*(fx(xi));
    end
    I(i)=f;
end
plot(t,I);