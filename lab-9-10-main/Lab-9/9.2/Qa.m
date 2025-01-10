fs = 10000 ;
td = 1;
P = zeros(1,5);
N = 5;
f0 = 50;
A = 1./(1:N) ;
x_a = harmonics(A,f0,P,td,fs);
sound(x_a,fs);
audiowrite('qa.wav',x_a,fs);

figure;

plot(x_a(1:300));
title('Signal x[n]');
xlabel('Sample Number');
ylabel('Amplitude');