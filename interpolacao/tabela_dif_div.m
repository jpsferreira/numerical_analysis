function [A] = tabela_dif_div(x,f)
    %TABELA DA DIF DIVIDIDAS:
    %DADOS: vetor coluna x dos pontos; vetor coluna y=f(x) dos pontos
    %RESULTADO: tabela (em forma matricial)
    %
    np=size(x,1);
    A=zeros(np,np);
    
    %coluna 1
    A(:,1)=f;
    % for i=1:np
    %     A(i,1)=f(i);
    % end
    
    %desde a coluna j=2 até à ultima
    for j=2:np
        %linha j até à ultima
        for i=j:np
            A(i,j) =(A(i,j-1)-A(i-1,j-1))/(x(i)-x(i-j+1));
        end
        
    end
    end