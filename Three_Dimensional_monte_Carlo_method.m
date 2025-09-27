clc
clear
close all

fx=@(x,y,z) (y*sin(x))+(z*cos(x));
n=10000;
a=0;
b=pi;
c=0;
d=1;
e=-1;
f=1;
I=0;
for i=1:n
    x=a+(b-a)*rand;
    y=c+(d-c)*rand;
    z=e+(f-e)*rand;
    I=I+fx(x,y,z);
end
In=(((b-a)*(d-c)*(f-e))/n)*I;