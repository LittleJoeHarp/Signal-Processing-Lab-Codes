syms t;

T1 = 0.1; 
N_Values = [10,50,100,200];
T = 1;
x_t = piecewise(-T1 <= t & t <= T1, 1, -T/2 <= t & t <= -T1, 0, T1 <= t & t <= T/2, 0);
t1 = -T1;
t2 = T1;
figure;

for i=1:4
F = fourierCoeff(t, x_t, T, t1, t2, N_Values(i));
time_grid = -0.5:0.01:0.5;
subplot(4,1,i);
reconstructed_signal = partialfouriersum(F, T, time_grid);
plot(time_grid, reconstructed_signal);
xlabel('Time (t)');
ylabel('Signal Amplitude');
title(['Reconstructed Signals - N = ',num2str(N_Values(i))]);

grid on;
end