function [a,b,m,d,ind] = gauss_pt(a,b)
%metodo de eliminacao de Gauss com pivotagem total
%   inputs: 
%       matriz A
%       vetor b
%   outputs: 
% A e b modificados. A fica matriz triangular superior. 
% m:  matriz dos multiplicadores
% d:  determinante de A
m=zeros(size(a));
d=1;
q=0;
ind=1:size(a,1);
%
for k=1:size(a,1)-1
    %pivotagem total
    max=abs(a(k,k));
    l=k;
    c=k;
    for i=k+1:size(a,1) %procurar por maximo na submatriz
        for j=k+1:size(a,1)
            if abs(a(i,k))> max
                max = abs(a(i,k));
                l=i;
                c=j;
            end
        end
    end
     
    if l~=k %trocar linhas
        aux    = a(k,:);
        a(k,:) = a(l,:);
        a(l,:) = aux;

        aux  = b(k);
        b(k) = b(l);
        b(l) = aux;
        
        d=-d; %atualizar det
    end
    
    if c~=k %trocar colunas
        aux    = a(:,k);
        a(:,k) = a(:,c);
        a(:,c) = aux;

        aux   = ind(k);
        ind(k)= ind(c);
        ind(c)= aux;
        
        q=q+1;
        d=-d; %atualizar det
    end
    
    d=d*a(k,k); %calcular det
    
    %triangularizacao
    for i=k+1:size(a,1)
        mm=a(i,k)/a(k,k);
        m(i,k)=mm;
        for j=k:size(a,2)           
            a(i,j)=a(i,j)-mm*a(k,j);            
        end        
        b(i)=b(i)-mm*b(k);        
    end
end
   d=d*a(size(a,1),size(a,2));
end

