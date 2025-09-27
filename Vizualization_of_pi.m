clc
clear
close all
a = -1;
b = 1;
n = 500;
X = 1:n;
Y = 1:n;
p = 1;
q = 1;
x = 0;
y = 0;
r = 1;
step = 100;
num_steps = n/step;
estimated_pi = zeros(num_steps,1);
N_values = zeros(num_steps,1);
step_idx = 1;
fplot(@(t) r*sin(t)+x, @(t) r*cos(t)+y);
hold on
for i = 1:n
   X(i) = a + ((b - a) * rand);
   Y(i) = a + ((b - a) * rand);
   d = sqrt((X(i)^2) + (Y(i)^2));
   if d < r
       q = q + 1;
   end
   scatter(X(i), Y(i), 10, 'filled');
   drawnow;
   pause(0.00001);
       estimated_pi(step_idx) = (q / i) * 4;
       N_values(step_idx) = i;
       step_idx = step_idx + 1;
end
pie = (q / n) * 4;
disp(['Estimated value of pi: ', num2str(pie)])
figure
plot(N_values, estimated_pi);
hold on
yline(pi, 'r--');