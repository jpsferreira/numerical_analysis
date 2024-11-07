function [x,k,erro] = mn(x0,tol,maxiter)
%metodo iterativo simples
k=0;
erro=tol+1;
while erro > tol && k < maxiter

    
x=x0-f(x0)/df(x0);


k=k+1;
erro = abs(x-x0)/abs(x0);

x0=x;


end



end

