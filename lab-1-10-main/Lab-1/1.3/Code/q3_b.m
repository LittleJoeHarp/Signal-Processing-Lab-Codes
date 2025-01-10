%12a.m
syms t ;
x_t = 2*cos(2*pi*t) + cos(6*pi*t);
T = 1;
N = 5;
t1 = 0;
t2 = T;
F = fourierCoeff(t, x_t, T, t1, t2, N);
time_grid = -0.5:0.01:0.5;
reconstructed_signal = partialfouriersum(F, T, time_grid);
original_signal = 2*cos(2*pi*time_grid) + cos(6*pi*time_grid);
figure;

plot(time_grid, reconstructed_signal, 'b', 'DisplayName', 'Reconstructed Signal',LineStyle='-',LineWidth=1.5);
hold on;
plot(time_grid, original_signal, 'r', 'DisplayName', 'Original Signal',LineStyle= '--',LineWidth=2.5);
hold off;
xlabel('Time (t)');
ylabel('Signal Amplitude');
title('Reconstructed Signals');
legend;
grid on;

MAE = max(abs(original_signal - reconstructed_signal));
fprintf('Maximum Absolute Error (MAE): %f\n', MAE);
