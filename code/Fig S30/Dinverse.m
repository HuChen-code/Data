function [x,fval] = Dinverse(ps,delta,N)
%fun = @(x)abs(log(1/delta)/N-ps*log(ps)-(1-ps)*log(1-ps)+log(x^ps*(1-x)^(1-ps)));
fun = @(x) abs(ps*log(ps/x)+(1-ps)*log((1-ps)/(1-x))-log(1/delta)/N);
[x,fval] = fminbnd(fun,0,ps);
end