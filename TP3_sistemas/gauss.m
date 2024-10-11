function [x,a,b] = gauss(a,b)
%metodo de elininacao de Gauss
%   inputs: 
%       matriz A
%       vetor b
%   outputs:
%       vetor x
x=zeros(size(b));
for k=1:size(a,1)-1
    %triangulalizacao
    for i=k+1:size(a,1)
        
        m=a(i,k)/a(k,k);
        
        for j=k:size(a,2)
            
            a(i,j)=a(i,j)-m*a(k,j);
            
        end
        
        b(i)=b(i)-m*b(k);
        
    end
end

%retrosubstituição
x(size(b))=b(j)/a(j,j);
for i=size(a,1)-1:-1:1
    
    s=0;
    
    for j=i+1:size(a,1)
        
        s=s+x(j)*a(i,j);
        
    end
    
    x(i)=(b(i)-s)/a(i,i);
end

