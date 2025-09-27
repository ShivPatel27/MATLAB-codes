clc
clear
close all

fx=@(x,y,z) (y.*sin(x))+(z.*cos(x));
n=10000;
a=0;
b=pi;
c=0;
d=1;
e=-1;
f=1;
x=a+(b-a)*rand(1,n);
y=c+(d-c)*rand(1,n);
z=e+(f-e)*rand(1,n);

f=fx(x,y,z);
I=((2*pi)/n)*sum(f);
