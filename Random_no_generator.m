clc
close all
clear

s=2*10^31+1;
a=7^5;
b=0;
x0=1;
n=10000;

f=@(x) mod((a*(x)+b),s);
x=zeros(1,n);

for i = 1:n 
    r=f(x0);
    x(i)=r;
    x0=x(i);
end

%x=(x-x(end-1))/x(1);
figure();
scatter(x(1:end-1),x(2:end),".");

