
syms t ;
x_t = 2*cos(2*pi*t) + cos(6*pi*t);
T = 1;
N = 5;
t1 = 0;
t2 = 1;
F = fourierCoeff(t, x_t, T, t1, t2, N);
k = -N:N;
figure;
stem(k,F,"filled");
xlabel('Coefficient_Index: k');
ylabel('Fourier Series Coefficient(a_k)');
title('Fourier Series Coefficients of x_t');
grid on;