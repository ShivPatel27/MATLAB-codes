clc 
clear
close all
%{
LEAST SQUARE METHOD

E --> Summition.
d --> Paritial derivative
X --> Chii (susceptability)


Curve Fitting in various data points and understanding the trends,
minimizing the error is the most important part of curve fitting

    d1=y1-f(x1)--> Error d1 must be minimum wrt to every other Ys
        
        to minimize the error: d1= (y1-f(x1))^2 --> to make it positive &
        it's magnitude is considered.

        hence: fx = E n=0 to m (an*x^n) ---> at m=1
                                                
                    f(x)= a0 + a1*x

a0 --> slope
a1 --> y-intercept

as, it is a straight line function.

Therefore:
                
                X^2= E i=1 to m (f(xi)-yi)^2

dX^2/da0 = 0 -----> Equating it to zero to minimize;

let's say we have 2 data points:
for f(x)=a0+a1*x


therefore: dX^2/da0 = 2[a0 + a1(x1+x2) - (y1+y2)] = 0
           dX^2/da1 = 2[a0(x1+x2) + a1(x1^2+x2^2) - y1*x1 + y2*x2] = 0 


for General no. of data points:

for a0:

dX^2/da0 = 2*(a0+a1*xi-fi)=0

hence, (n+1)*a0+ a1 * (xi) - fi = 0

**{this is equal to: (n+1) a0 + c1* a1 - c3 = 0}** --> IMPORTANT

for a1:

dX^2/da1 = 2*((a0 + a1*xi) - fi)*xi = 0

hence, a0*xi + a1*(xi^2) - fi*xi = 0

**{this is equal to: c1*a0 + c2*a1 - c4 = 0}** --> IMPORTANT

[ n+1  c1 ] * [a0] = [c3]
[ c1   c2 ]   [a1] = [c4]



%}

t=1:0.01:20;
k=4:1:18;
qk=[9.558,8.206,9.880,11.50,13.14,14.82,16.40,18.04,19.68,21.32,22.96,24.60,26.24,27.88,29.52];
n=numel(k);
c1=sum(k);
c2=sum(k.^2);
c3=sum(qk);
c4=sum(k.*qk);

C=[n+1 c1;c1 c2];

A=C\[c3;c4];

a0=A(1);%hence we found slope
a1=A(2);%hence we found y-intercept

fqk=@(x) a0 + a1.*(x);

plot(t,fqk(t));
hold on 
scatter(k,qk);
