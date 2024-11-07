function [x,k,erro] = secante(x00,x0,tol,maxiter)
%metodo iterativo simples
k=0;
erro=tol+1;
while erro > tol && k < maxiter

d=(f(x0)-f(x00))/(x0-x00);
x=x0-f(x0)/d;


k=k+1;
erro = abs(x-x0)/abs(x0);

x00=x0;
x0=x;



end



end

