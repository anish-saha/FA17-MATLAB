function result = backward(U, b)
    x = zeros(size(b));
    y = zeros(size(b));
    x = x'
    for i = 1:size(b)
        y(i, i) = x(i) / b
    result = U\b;
end