clear all;
clc;

%assumir a existencia de n+1 pontos: (xi,yi), i=0..n
%objetivo: interpolar com com polinomio de grau n 

%problema 2:
%interpolar por um polinomio de grau 2 --> 3 pontos da zona central da
%tabela
%p2(1.8) = ??

%dados arrumados em vetores coluna.
x=[1.4,2.0,2.2]';
y=[2.42,2.0,1.779]';


%metodo de newton
% - calcular a tabela das diferencas divididas
% - aplicar o metodo
interpolacao_newton(1.8,x,y)

x_eval=0:0.1:3;


pp = interpolacao_newton(x_eval,x,y);


%interpolar usando todos os pontos da tabela de dados
x_t = [0.6,1.0,1.4,2,2.2,2.6,3.0]';
y_t = [0.6021,2.232,2.42,2.00,1.779,1.209,0.6897]';
pp_t = interpolacao_newton(x_eval,x_t,y_t);

plot(x_eval,pp)
hold on
scatter(x_t,y_t,'green')
%hold on
%scatter(x,y,'red')