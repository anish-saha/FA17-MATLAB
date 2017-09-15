function total = g_3(n)
%   g_3 Summary of this function goes here
%   Detailed explanation goes here
    total = 0
    arr = 1:1:n
    arr2 = arrayfun(@f_4, arr);
    total = sum(arr2);

end