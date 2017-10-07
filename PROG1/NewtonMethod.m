function x = NewtonMethod(f, df, x, maxit, t)
% f is the function that we are finding the zeros of
% df is the derivative of the function above
% x is the initial approximation for the root
% maxit is the max number of iterations to bedone
% t is the tolerance for error
for n = 1:maxit
    d = f(x)/df(x);
    x = x - d;
    r = isreal(d);
    if r == 1
        if abs(d) < t
            return
        end
    else
        t = t + 0.000001i;
        if abs(imag(d)) < imag(t) && abs(real(d)) < real(t)
            return
        end
    end
end
