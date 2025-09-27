clc
clear
close all
npt=3000;
x0=70;
v0=0;
a=-9.8;
t=linspace(0,10,npt);
dt=t(2)-t(1);
x=zeros(1,numel(t));
v=zeros(1,numel(t));
x(1)=x0;
v(1)=v0;
k=300;
m=5000;
w=k/m;
for ii=1:numel(t)-1
    x1=x0+v0*dt;
    x(ii+1)=x1;
    v1=v0+(a*dt)-(w*v0*dt);
    v(ii+1)=v1;
    x0=x1;
    v0=v1; 
end

x0=70;
v0=0;
xa=zeros(1,numel(t));
va=zeros(1,numel(t));
xa(1)=x0;
va(1)=v0;
for ii=1:numel(t)-1
    x1=x0+v0*dt;
    xa(ii+1)=x1;
    v1=v0+a*dt;
    va(ii+1)=v1;
    x0=x1;
    v0=v1; 
end

figure
p=plot(t,x);
xlabel("time");
ylabel("displacement");
p.LineStyle="--";
l=legend;
l.String(1)={'k=3000'};

hold on
p1=plot(t,xa);
xlabel("time");
ylabel("displacement");
p1.LineStyle="-";
l.String(2)={'k=0'};

figure
p2=plot(t,v);
xlabel("time");
ylabel("Velocity");
p2.LineStyle="--";
l1=legend;
l1.String(1)={'k=3000'};

hold on
p3=plot(t,va);
p3.LineStyle="-";
l1.String(2)={'k=0'};