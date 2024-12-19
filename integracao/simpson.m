function [S, v] = simpson(a,b,n)
% Simpson composta:
% Dados: 
%   intervalo para a integracao [a,b];
%   numero de subintervalos: n (par)
% Resultados:
%   Integral definido pela regra dos Simpson
% largura de cada subintervalo
h = (b-a)/ n;
% vetor com as coordenadas x dos trapezios
x = linspace(a,b,n+1)';
% vetor com os valores da funcao f(x) nos trapezios
y = f(x);
% Aplicar Simpson
% somatorio dos pontos intermedios de cada subintervalo
s1 = 4*sum(y(2:2:end));
% somatorio dos extremos de cada subintervalo (sem contar com os extremos
% do intervalo)
s2 = 2*sum(y(3:2:end-1));
% somatorio Simpson
S = (h/3)*(y(1)+y(end)+s1+s2);

% matrix v com x e y dos trapezios
v = [x y];

end