% Math 98: Introduction to MATLAB Programming
% Assignment 5
% Anish Saha

% Problem 1
syms x(t) y(t)
eqns = [diff(x,t)==x-y, diff(y,t)==(-2*x)+y];
cond = [x(0)==1, y(0)==1];
[res_x(t), res_y(t)] = dsolve(eqns, cond);
T = linspace(0, 3, 100);
plot(res_x(T), res_y(T)); hold on; % ACTUAL

f = @(t, Y) [1,-1;-2,1]*Y;
[t Y] = my_Euler(f,[0,3],[1,1],0.2);
plot(Y(:,1), Y(:,2)); hold on;
[t Y] = my_Euler(f,[0,3],[1,1],0.1);
plot(Y(:,1), Y(:,2)); hold on;
[t Y] = my_Euler(f,[0,3],[1,1],0.05);
plot(Y(:,1), Y(:,2)); hold on;
[t Y] = my_Euler(f,[0,3],[1,1],0.025);
plot(Y(:,1), Y(:,2)); hold on; 

% Problem 2
f = @(t, y)y;
E = zeros(1,6);
for i = 1:6
    [t Y] = imp_Euler(f, [0,1], 1, 0.5^i);
    E(i) = max(abs(Y - exp(t)));
end
loglog(0.5.^(1:6),E);

% Problem 3
syms x(t);
d = 1;
x_0 = 1;
v_0 = 1;
t_interval = [0,3];
eqns3 = [diff(x,t,2)==d*x + x];
cond3 = [x(0)==x_0, diff(x)==v_0];
% [res_x3(t)] = dsolve(eqns3, cond3);
% T2 = linspace(0, 3, 100);
% dx3(t) = diff(res_x3,t);
% plot(res_x3(T2), dx3(T2));
