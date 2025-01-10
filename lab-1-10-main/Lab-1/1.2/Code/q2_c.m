
syms t ;
T = 1;
T1 = T/4;
x_t = piecewise(-T1<=t & t<=T1 , 1 , T1<abs(t)& abs(t)<T/2, 0) ;
N = 10;
t1 = -T1;
t2 = T1;
F = fourierCoeff(t, x_t, T, t1, t2, N);
k = -N:N;
figure;
stem(k,F,"filled");
xlabel('Coefficient_Index: k');
ylabel('Fourier Series Coefficient(a_k)');
title('Fourier Series Coefficients of x_t');
grid on;