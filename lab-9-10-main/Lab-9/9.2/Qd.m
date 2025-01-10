fs = 10000 ;
td = 1;
f0 = 100;
N = 10;

A1 = 1 + sin(pi * (1:N) / N);
x_d1 = harmonics(A1, f0, zeros(1, N), td, fs);
sound(x_d1, fs);
pause(td+1);
audiowrite('qd1.wav',x_d1,fs);

A2 = log(1:N);
x_d2 = harmonics(A2, f0, zeros(1, N), td, fs);
sound(x_d2, fs);
pause(td+1);
audiowrite('qd2.wav',x_d2,fs);

A3 = 1:N;
x_d3 = harmonics(A3, f0, zeros(1, N), td, fs);
sound(x_d3, fs);
audiowrite('qd3.wav',x_d3,fs);

figure;
subplot(3,1,1);
plot(x_d1(1:300));
title('Signal x1[n]');
xlabel('Sample Number');
ylabel('Amplitude');

subplot(3,1,2);
plot(x_d2(1:300));
title('Signal x2[n]');
xlabel('Sample Number');
ylabel('Amplitude');

subplot(3,1,3);
plot(x_d3(1:300));
title('Signal x3[n]');
xlabel('Sample Number');
ylabel('Amplitude');