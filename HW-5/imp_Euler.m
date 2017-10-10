function [t,y]=imp_Euler(fun,tspan,y0,h);
    t = tspan(1);
	te = tspan(2);
	tn = t;
	if size(y0,1) == 1
    	y=y0;
		yn=y0';
	else
    	y=y0';
		yn=y0;
	end
	while tn<te
    	fn=feval(fun,tn,yn);
    	if te-tn<h
        	h=te-tn;
			tn=te;
    	else
        	tn=tn+h;
        end
        fn2 = feval(fun, tn, h*fn);
    	yn=yn+(0.5*h)*(fn)+fn2;
	end
end
