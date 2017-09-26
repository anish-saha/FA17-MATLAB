function result = coeff(x, y, N)
    x = x';
    y = y';
    P = 2*pi/4*(1:N).*x;
    result = [ones(size(x)), cos(P), sin(P)]\ y; 
    
end