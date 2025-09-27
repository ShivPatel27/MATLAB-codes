clc
clear
close all

a=0.5;
b=1.5;
n=10000;
t=linspace(0.5,1.5,n);
h=t(2)-t(1);

f=@(x) x.*exp(-(x.^2));
fx=f(t);

S1=0;
for ii=0:n-1
    if ii==0||ii==n-1
        c=1;
    elseif mod(ii,3)==0
        c=2;
    else 
        c=3;
    end
    S1=S1+((h*3)/8)*(c*fx(ii+1));
    
end
S2=((1/6)/3)*(fx(1)+(4*fx(2))+(2*fx(3))+(4*fx(4))+(2*fx(5))+(4*fx(6))+fx(7));

s_sim=0;
for i=1:n-1
    s_sim=s_sim+(h/n)*(fx(i)+n*fx(i+1));
end

