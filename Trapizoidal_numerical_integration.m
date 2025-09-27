clc
clear
close all

%f=[2,4,8,16];
%x=[0,1,2,3];
f=@(x) x;
a=0;
b=4;
h=.0001;
n=(b-a)/h;
t=linspace(a,b,n);
f=f(t);
s=0;
for i=1:n-1
    s=s+(h/2)*(f(i)+f(i+1));
end

