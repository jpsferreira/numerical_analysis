function [x,k,erro] = bissecoes(a,b,tol,maxiter)
%metodo iterativo simples
k=0;
erro=tol+1;
x0=(a+b)/2;
while erro > tol && k < maxiter

  if f(a)*f(x0)<0
      b=x0;
  else
      a=x0;
  end

x=(a+b)/2;

k=k+1;
erro = abs(b-a)/2;

x0=x;



end



end

