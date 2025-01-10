fs = 10000 ;
td = 1;
P = zeros(1,5);
N = 5;
f0 = 50;
A = exp(-(1:N)) ;
x_b = harmonics(A,f0,P,td,fs);
sound(x_b,fs);
audiowrite('qb.wav',x_b,fs);

figure;

plot(x_b(1:300));
title('Signal x[n]');
xlabel('Sample Number');
ylabel('Amplitude');