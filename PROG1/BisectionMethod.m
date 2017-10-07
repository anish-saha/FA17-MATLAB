function result = BisectionMethod(f,a,b,t)
    % f is the function we are find the (approximate) root for
    % a is the initial value (left side initial value)
    % b is the final value (right side initial value)
    % t is the tolerance for error
    left = a;
    right = b;
    middle = (left+right)/2;
    f_left = f(left);
    f_right = f(right);
    f_middle = f(middle);
    counter = 0;
    
    if f_right*f_left >= 0
        error('f(a),f(b) must have opp. signs; no root between a and b.')
    end
    
    while right-left >= t && abs(f_middle) >= t
        if counter > 1000
            error('Too many iterations. Method failed.')
        else
            counter = counter + 1;
        end
        if f_middle*f_left <= 0
            right = middle;
            f_right = f_middle;
        else 
            left = middle;
            f_left = f_middle;
        end
        middle = (left+right)/2;
        f_middle = f(middle);
    end
    result = middle;
end
