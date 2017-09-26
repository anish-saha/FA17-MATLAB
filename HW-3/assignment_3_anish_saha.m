% MATH 98 Fall 2017
% Assignment 3
% Anish Saha

% Problem 1
x = random('Uniform', 0, 4, 1, 20);
y = y_measure(x);
res5 = coeff(x, y, 5);
res10 = coeff(x, y, 10);
res20 = coeff(x, y, 20);
res40 = coeff(x, y, 40);
res80 = coeff(x, y, 80);
q = linspace(0,4,200);
f5 = poly2sym(res5);
f10 = poly2sym(res10);
f20 = poly2sym(res20);
f40 = poly2sym(res40);
f80 = poly2sym(res80);

% Observing the functions, the results become 
% closer to actual curve as N increase.

% Problem 2
forward(x)
backward(x)


