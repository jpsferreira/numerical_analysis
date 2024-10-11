function [x,erro,k] = gauss_seidel(a,b,x0,tol,maxiter)
%metodo de Gauss Seidel
%para matrizes com diagonal dominante
k=0;
erro=tol+1;
%
while erro> tol && k<maxiter
%   
    x=x0;
    
    for i=1:size(a,1)
        s=0;
        for j=1:size(a,1)
            if j~=i
                s=s+a(i,j)*x(j); %seidel
            end
        end
        x(i)=(b(i)-s)/a(i,i)
    end
    max1=abs(max(x-x0));
    max2=abs(max(x));
    e_rel=max1/max2;
    
    k=k+1;
    erro=max(abs(x-x0));
    x0=x;
end

end

