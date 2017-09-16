function result = taylorSin(x)
% Function that perform approximation of the 99th degree 
% Taylor polynomial expansion of sin(x) 

    n = 1:2:99;
    result = []
    
    if size(x, 1) > 1
        msg = 'Invalid input.';
        error(msg)
    end
    
    for i = 1:size(x,2)
        x(i) = rem(x(i), (2*pi));
        v = [x(i).^n]*1./factorial(n).*(-1).^(0:49);
        result(i) = sum(v, 2);

end
