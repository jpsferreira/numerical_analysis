clc;
clear all;

% Dado a,b, e n, e a funcao f(x) que queremos integrar
%Aplicar Regra dos trapezios composta e Simpson Composta

% Dados
a = 0;
b = 1;
n = 8;

%%
% Funcao
% ficheiro f.m com a funcao f(x)

%%
% Regra dos Trapezios Composta
[Tc, v] = trapezios(a,b,n);
% EXTRA:  grafico
figure
plot(v(:,1),v(:,2), 'blue')
hold on
scatter(v(:,1),v(:,2)) % alturas dos trapezios
hold on
for i=1:n+1
    % linhas verticais dos trapezios
    plot([v(i,1) v(i,1)],[0,v(i,2)],'blue')
end
hold on 
% plotar f(x) com muitos pntos (dar a ideia da continuidade)
xf = linspace(a,b,n+1000);
ff = f(xf);
plot(xf,ff,'k')
hold off
% label de texto com o valor do integral o com o numero de trapezios
text(0.1,0.9,['Soma dos Trapezios = ',num2str(Tc)],'FontSize',12)
text(0.1,0.8,['Numero de Subintervalos = ',num2str(n)],'FontSize',12)

%%
% Simpson Composta
[Sc, s] = simpson(a,b,n);
% EXTRA:  grafico
figure
plot(s(:,1),s(:,2), 'red')
hold on
scatter(s(:,1),s(:,2)) % alturas dos trapezios
hold on
% cada subintervalo Simpson Composta contem 3 pontos.
for i=1:n+1
    % linhas verticais dos pontos intermedios
    plot([s(i,1) s(i,1)],[0,s(i,2)],'red')
    % linhas verticais dos extremos
    if mod(i,2) ~= 0
        plot([s(i,1) s(i,1)],[0,s(i,2)],'red','LineWidth',2)
    end
end
hold on
plot(xf,ff,'k')
hold off
% label de texto com o valor do integral o com o numero de subintervalos
text(0.1,0.9,['Soma Simpson = ',num2str(Sc)],'FontSize',12)
text(0.1,0.8,['Numero de Subintervalos = ',num2str(n/2)],'FontSize',12)

%%
% Estimativa de erro absoluto com a diferenca entre dois N:
%  (n e n+2) para Simpson
%  (n e n+1) para Trapezios
%  Calcular Integral ate o erro absoluto ser menor que uma tolerancia

tol = 0.00001;
erro = tol + 1;
nn = 0;
tt0 = 0;
erro_vetor = []; % vetor com os erros. para grafico
integrais = []; % vetor com os valores das integrais. para grafico
subintervalos = []; % vetor com o numero de subintervalos. para grafico
while erro > tol
   % para trapezios
   %nn = nn + 1; % nn subintervalos
   %tt = trapezios(a,b,nn);
   % para simpson
   nn = nn + 2; % nn subintervalos
   tt = simpson(a,b,nn);
   erro = abs(tt - tt0);
   tt0=tt;
   erro_vetor = [erro_vetor;erro];
   subintervalos = [subintervalos;nn];
   integrais = [integrais;tt];
end
figure
% grafico com y em escala logaritmica    
semilogy(subintervalos,erro_vetor)
% linha horizontal na tolerancia
hold on
plot(subintervalos,tol*ones(size(subintervalos)),'r')
hold on
% grafico com valor do integral. segundo eixo y
yyaxis right
plot(subintervalos,integrais)

