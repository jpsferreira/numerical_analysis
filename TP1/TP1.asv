clear all;
clc;
%% EXERCICIOS 1
% 1 - 
% Considere os vetores X=[2,0,-5,6] and Y=[2,10,1,-15]
X = [2,0,-5,6];
Y=[2,10,1,-15];
% a) Guarde em B a soma de X com Y
B = X + Y;

% b) Guarde em C o produto de max(x) por Y^T
C = max(X) * transpose(Y);

% c) Guarde em D o produto de X^T por Y
D = X' * Y;

% d) Guarde em E o produto interno entre X e Y. Produto de vetores e funcao
% dot()
E = X * Y'; % ou dot(X,Y)
% verificacao: verificaE retorna TRUE se condicao se verificar 
verificaE = dot(X, Y) == E;

% e) Quais os elementos da segunda linha de D. substitua por 2
% ver os elementos da segunda linha:
linha2D = D(2,:); % zeros
% substituir por "dois"
D(2,:) = 2;

% f) calcule maximo, minimo, e posicoes, para os vetores, B, C, e abs(C)
[max_B, pos_max_B]= max(B);
[max_C, pos_max_C]= max(C);
[max_aC, pos_max_aC]= max(abs(C));

[min_B, pos_min_B]= min(B);
[min_C, pos_min_C]= min(C);
[min_aC, pos_min_aC]= min(abs(C));

% g) Calcule X*2, X^2, X.^2, X.*Y
g1 = X*2; % elementos de X * 2
g2 = X.*X; % produto elemento a elemento entre X e X
g3 = X.^2; % elementos de Xao quadrado
g4 = X.*Y; % produto elemento a elemento entre X e X

% h) Explica o resultado da sequencia: 
x = 1:2:10; % cria vetor de inteiros impares ate 10
y = 2*ones(1,length(x)); % vetor de 1s com a mesma dimensao de x
z = y.^x; % operacao elemento a elemento: elementos de y elevados ao correspondente elemento de x
w = sum(z); % soma os elementos de z
