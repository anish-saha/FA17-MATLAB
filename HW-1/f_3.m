function total = f_3(n)
    total = 0
    arr = 1:1:n;
    arr2 = arrayfun(@f_4,arr);
    total = sum(arr2);
    
end
