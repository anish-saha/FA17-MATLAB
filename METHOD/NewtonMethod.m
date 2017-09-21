function [fun, dfun, x, out] = NewtonMethod(Fun, dFun,x0, params)
% On input: 
%   Fun and dFun are the names of function and its derivative. 
%   x0 is initial guess, and tol tolerance.
%
% On output
%   fun and dfun contain all function values and derivatives 
%   computed by Newton
%   out.flg = 0 means success; otherwise method failed.
%   x(end) is the root if out.flg = 0.
%   
% Written by Ming Gu for Math 128B, Spring 2010
% 
[FunFcn,msg] = fcnchk(Fun,0);
if ~isempty(msg)
    error('InvalidFUN',msg);
end
[dFunFcn,msg] = fcnchk(dFun,0);
if ~isempty(msg)
    error('InvalidFUN',msg);
end
out.flg = 1;
x(1)= x0;
tol = params.tol;
N   = params.MaxIt;

for k = 1:N
    fun(k)  = FunFcn(x(k));
    dfun(k) = dFunFcn(x(k));
    if (abs(fun(k)) < tol)
       out.flg = 0;
       out.it = k;
       return;
    end
    if (dfun(k) == 0)
       out.it = k;
       return;
    end
    x(k+1) = x(k) - fun(k)/dfun(k);
end

       

