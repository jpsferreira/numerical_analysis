function [x,k,erro] = mis(x0,tol,maxiter)
%metodo iterativo simples
    k=0;
    erro=tol+1;
    while erro > tol && k < maxiter
        x=g(x0);
        k=k+1;
        erro = abs(x-x0);
        
        x0=x;
    end
end

