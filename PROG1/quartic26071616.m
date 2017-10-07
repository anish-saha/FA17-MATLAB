function [rts] = quartic26071616(C)
    % Anish Saha ? Math 128A: Numerical Analysis
    % Fall 2017 ? DIS 102 ? Prog 1 ? SID: 26071616
    
    % C is a vector composed of [a,b,c] such that
    % f(x) = x^4 + ax^3 + bx^2 + cx - 1
    
    % SETUP
    R = max(C) + 1;
    a = C(1);
    b = C(2);
    c = C(3);
    f = @(x) x^4 + a*x^3 + b*x^2 + c*x - 1;
    df = @(x)  4*x^3 + (3*a)*x^2 + (2*b)*x + c;
    
    % Bisection Method --> find approximations for Newton's Method
    est1 = BisectionMethod(f, -R, 0, 0.5); % real est 1
    est2 = BisectionMethod(f, 0, R, 0.5); % real est 2
    
    % Newton's Method to find the 2 real roots accurate to within 10^-5
    res1 = NewtonMethod(f, df, est1, 1000, 0.00000001); % negative real root
    res2 = NewtonMethod(f, df, est2, 1000, 0.00000001); % positive real root
    
    % Polynomial divide f / ((x-res1)(x-res2)) then use quadratic formula
    prod = conv([1, -res1], [1, -res2]);
    quadratic = deconv([1, a, b, c, -1], prod);
    a1 = quadratic(1); 
    b1 = quadratic(2);
    c1 = quadratic(3);
    
    d = 4*a1*c1;
    est3 = (-1*b1 - sqrt(b1^2-d)) / (2*a1); % real/complex est 3
    est4 = (-1*b1 + sqrt(b1^2-d)) / (2*a1); % real/complex est 4
    
    res3 = NewtonMethod(f, df, est3, 1000, 0.000001); % real/complex root
    res4 = NewtonMethod(f, df, est4, 1000, 0.000001); % real/complex root
    
    rts = [res1, res2, res3, res4];
end

    