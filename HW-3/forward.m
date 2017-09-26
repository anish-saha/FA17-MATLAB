function x = forward(L,b)
% Solved with much help from stackOverflow user: Rody Oldenhuis
x = zeros(size(b));
for ii = n : -1 : 1
    x(ii,:) = (b(ii,:)-L(ii,:)*x)/L(ii,ii);
end