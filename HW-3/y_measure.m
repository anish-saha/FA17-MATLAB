function result = y_measure(inp)
% Helper function that simulates the measurement of y 
% y_measure(x) = y(x) + ? where ? is a Gaussian random variable
% with mean 0 and ? = 0.5 independently for each input value.

y = @(x) x.*(x-3).*(x-4);
n = @(x) y(x) + normrnd(0, 0.5, size(x));
result = n(inp)
