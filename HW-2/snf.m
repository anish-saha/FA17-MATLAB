function result = snf(x, NUM)
% DEPRECATED, used SNF_1 matrix instead.
% Helper function to help solve SNf(x) in the second part of question 2b
% Finds Nth (denoted by NUM) partial sum of f(x), where x is a vector input
result = zeros(1, 101); % 1x101 matrix (vector)
for n = 0:NUM
    for i = 1:101
      result(1, i) = (sin(2*n+1)*i)/(2*n+1);   
    end
end