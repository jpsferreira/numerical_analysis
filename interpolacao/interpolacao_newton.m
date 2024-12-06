function [p] = interpolacao_newton(xk,x,f)
    %METODO DE NEWTON PARA INNTERPOLAR:
    %DADOS: xk - ponto a avaliar o polinomio;
    %vetores x e f (coluna) de dados iniciais (xi,f(xi)), i=0,...n
    %RESULTADO: valor do polinomio em xk: p
    [A]=tabela_dif_div(x,f);
    %p(xk)=f(x0)+f[x0,x1]*(xk-x0)+f[x0,x1,x2]*(xk-x0)(xk-x1)+f[x0,x1,x2,x3]*(xk-x0)(xk-x1)(xk-x2)+...
    %p2(xk)=A[1,1]+A[2,2]*(xk-x(1))+A[3,3]*(xk-x(1))(xk-x(2))
    p=A(size(A,1),size(A,2));
    for j=size(A,1):-1:2
        p=p.*(xk-x(j-1))+A(j-1,j-1);
    end
    
    end
    