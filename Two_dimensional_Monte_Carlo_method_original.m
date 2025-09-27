clc
clear
close all
f=@(x,y) (2*x^2)+(y^2);
n=10000;
a=0;
b=2;
c=0;
d=1;
I=0;
for i=1:n
    x=a+(b-a)*rand;
    y=c+(d-c)*rand;
    I=I+f(x,y);
end
Integral=(2/n)*I;