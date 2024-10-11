function [a,b,m,d] = gauss_pp(a,b)
%metodo de eliminacao de Gauss
%   inputs: 
%       matriz A
%       vetor b
%   outputs: 
% A e b modificados. A fica matriz triangular superior. 
% m:  matriz dos multiplicadores
% d:  determinante de A
m=zeros(size(a));
d=1;
%
for k=1:size(a,1)-1
    %pivotagem parcial
    max=abs(a(k,k));
    l=k;
    for i=k+1:size(a,1)
        if abs(a(i,k))> max
            max = abs(a(i,k));
            l=i;
        end
     end
    if l~=k
        aux    = a(k,:);
        a(k,:) = a(l,:);
        a(l,:) = aux;

        aux  = b(k);
        b(k) = b(l);
        b(l) = aux;
        
        d=-d;
    end
    
    d=d*a(k,k);
    
    %triangulalizacao
    for i=k+1:size(a,1)
        mm=a(i,k)/a(k,k);
        m(i,k)=mm;
        for j=k:size(a,2)           
            a(i,j)=a(i,j)-mm*a(k,j)            
        end        
        b(i)=b(i)-mm*b(k);      
    end
end
   d=d*a(size(a,1),size(a,2));
end

