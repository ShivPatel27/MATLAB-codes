%{
This is Richardson Extrapolation formula : 

WE EXTRAPOLATE MORE ACCURATE DERIVATIVE VALUES

TV = True derivative
AV = Approx. derivative
h = dx or error
E = error

TV = AV + E

TV = (AV)h + c*h^2 --> 1
TV = (AV)h/2 + c*(h^2 / 4) --> 2

subtracting 1 & 2

TV = (AV)h/2 + ( (AV)h/2 - (AV)h )/3
%}
clc
clear
close all

t=linspace(0,2*pi,1000);
%f1=@(x) 5.*x.*exp(-2.*x);
%df1 = @(x) 5.*(-2.*x.*exp(-2.*x)+exp(-2.*x));

f=@(x) exp(3*x);
df=@(x) 3*exp(x);

h1=0.1;
h2=h1/2;

dfcd=@(h,x) (f(x+h)-f(x-h))/(2*h);

AVh1=dfcd(h1,t);
AVh2=dfcd(h2,t);
anal_TV=df(t);

TV = AVh2+ ((AVh2 - AVh1)/3);

plot(t,anal_TV);
hold on
p1=plot(t,TV);
p1.LineStyle="--";

plot(t,AVh1);
plot(t,AVh2);
plot(t,f(t));