function [t,y]=my_Euler(fun,tspan,y0,h);
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
    	yn=(yn+h*fn);t=[t;tn];y=[y;yn'];
	end
end

% Comments. 1) It is assumed that everything is real-valued.
% 2) It is not checked whether the input variables are consistent.
% 3) (te-t0)/h need not be integer, the last step-size is chosen
%    smaller than h if necessary.
% 4) It does not matter if y0 is row or column vector
% 5) It is assumed (as elsewhere in Matlab) that f(t,y) returns
%    a column vector of the same length as y0!
