function result = pwError(NUM)
% Function to perform pointwise error calculations
C = (2*pi)/100;
x = -1*pi:C:pi;
f = @(y) (y / abs(y));
SNF_1 = zeros(NUM,101);

for n = 1:NUM
    for m = 1:101      
        SNF_1(n, m) = (sin(2*n+1)*x(m))/(2*n+1);
    end
end

snf_x = SNF_1(NUM, :);
f_x = arrayfun(f, x);
ERR = abs(f_x - snf_x);

plot(x, ERR); hold on;
plot(x, SNF_1);
max_err = max(ERR);
avg_err = mean(ERR, 2, 'omitnan');

result = zeros(1,2);
result(1, 1) = max_err;
result(1, 2) = avg_err;

end




        