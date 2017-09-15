function value = g_4(n, i)
    if rem(n, i) == 1
        value = i*(n-(i-1))
    else
        value = (i*(n-(i-1))) * -1
    end
end