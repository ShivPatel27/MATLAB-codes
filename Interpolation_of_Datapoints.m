 clc
 clear
 close all
 th=0:pi/1200:2*pi;
 f=sin(th);

 plot(th,f);

 x=pi/6;
 f_star=f(1)+((x-th(1))/(th(2)-th(1)))*(f(2)-f(1));
 f_real=sin(pi/6);
 ff=(f_star-f_real)/f_real * 100;

 hold on
 scatter(pi/6,f_star,"*");
 scatter(pi/6,f_real,"o");