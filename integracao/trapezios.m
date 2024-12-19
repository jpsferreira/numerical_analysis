function [T, v] = trapezios(a,b,n)
% Trapezios composta:
% Dados: 
%   intervalo para a integracao [a,b];
%   numero de subintervalos: n
% Resultados:
%   Integral definido pela regra dos trapezios
% largura de cada subintervalo
h = (b-a)/ n;
% vetor com as coordenadas x dos trapezios
x = linspace(a,b,n+1)';
% vetor com os valores da funcao f(x) nos trapezios
y = f(x);
% obter somatorio dos pontos intermedios
s = 2*sum(y(2:end-1));
% trapezio composta
T = (h/2)*(y(1)+ y(end) + s);

% construir matriz v
v = zeros(n+1,2);
% primeira coluna: x
v(:,1) = x;
% segunda coluna: y
v(:,2) = y;

end