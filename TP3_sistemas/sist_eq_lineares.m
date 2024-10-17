clc;
clear all;
%% FICHA 2
%% (1)
% (a)
A = [-2,2,-1,1;1,0,8,1;-5,4,6,1;0,1,1,1];
B = [6;-2;0;9];



[Am,Bm,m1a,d1a]=gauss_pp(A,B);

x1 = subs_ts(Am,Bm);

[ee2,ff2,mm2,dd2,ind]=gauss_pt(A,B);

x2 = subs_tts(ee2,ff2,ind);


x0 =[1
    1
    1
    1];
tol=1e-5;
maxiter=100;

a=[10 1 0 0;1 7 -1 0;0 -1 10 1; 0 0 1 7];
b=[6 8.5 -10 6]';
a=[-20 2 -1 1;1 8 0 1;-1 2 10 1; 0 1 1 12];
b=[6 -2 0 9]';
x0=[0.1 -1.2 0 0.9]';
[x3,erro,iter] = jacobi(a,b,x0,tol,maxiter);

[x4,erro1,iter1] = gauss_seidel(a,b,x0,tol,maxiter);
