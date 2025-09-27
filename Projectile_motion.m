clc
clear
close all

%constants
g=-9.8;
r=10;
m=1000;
k=r/m;
th=60;
v_mag=10;

%defining time interval
tmax=100;
t=linspace(0,100,tmax);
dt=t(2)-t(1);

%forming array of position and velocity along x  &  y

s=[0;0];
v=v_mag*[cosd(th);sind(th)];
a=g*[0;-1];
data_array=zeros(2,numel(t),2);


%getting values

for ii=1:numel(t)-1
    s_new=s+(v*dt);
    v_new=v+(a*dt)-(k*v*dt);
    data_array=[s,v];
    v=v_new;
    s=s_new;
    
end

%plot(data_array(:,:,1),t);