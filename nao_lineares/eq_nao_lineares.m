clc;
clear all;

x0=0.0;
tol=0.006;
maxiter=100;

xx = mis(x0,tol,maxiter);

x0=0.6;
tol=0.001;
maxiter=100;

[x11,k1,iter1] = mn(x0,tol,maxiter);

x0=0.6;
x1=0.7;
tol=0.001;
maxiter=100;

[x2,k2,iter2] = secante(x0,x1,tol,maxiter);


a=0.6;
b=1.9;
tol=0.001;
maxiter=100;

[x3,k3,iter3] = bissecoes(a,b,tol,maxiter);