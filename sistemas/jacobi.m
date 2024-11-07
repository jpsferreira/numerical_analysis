function [x,erro,k] = jacobi(a,b,x0,tol,maxiter)
%metodo de Jacobi
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
                s=s+a(i,j)*x0(j); %jacobi
            end
        end
        x(i)=(b(i)-s)/a(i,i);
        i,s
     end
    max1=abs(max(x-x0));
    max2=abs(max(x));
    e_rel=max1/max2;
    
    k=k+1;
    erro=max(abs(x-x0));
    x0=x;
end

end

