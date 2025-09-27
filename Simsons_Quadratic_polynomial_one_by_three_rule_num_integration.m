 clc
 clear
 close all

f=@(x) sin(x);
n=3;
t=linspace(0,pi,n);
s_trap=0;
h=t(2)-t(1);
f=f(t);
for i=1:n-1
    s_trap=s_trap+(h/2)*(f(i)+f(i+1));
end
S1=0;
for i=0:n-1
    if i==0||i==n-1
        c=1;
    elseif mod(i,2)==0
        c=2;
    else 
        c=4;
    end
    S1=S1+((h)/3)*(c*f(i+1));
end

s_sim_1=h/3*(f(1)+4*f(2)+f(3));