function [x] = subs_ts(a,b)
%metodo de eliminacao de Gauss
%   inputs: 
%       matriz A triangular superior
%       vetor b
%   outputs:
%       vetor x
x=zeros(size(b));

%retrosubstituicao
x(size(b))=b(size(b))/a(size(a,1),size(a,2));
for i=size(a,1)-1:-1:1    
    s=0;   
    for j=i+1:size(a,1)        
        s=s+x(j)*a(i,j);        
    end    
    x(i)=(b(i)-s)/a(i,i);
end

end

