syms t;
T = 1;
T1 = T / 4;
t1 = -T1;
t2 = T1;

xt = piecewise(-T1 <= t & t <= T1, 1, t1 < abs(t) & abs(t) < T/2, 0);

time_grid = -0.5:0.01:0.5;

maxerrors = zeros(1, 100);

for N = 1:100
    F = fourierCoeff(t, xt, T, t1, t2, N);
    reconstructed_signal = partialfouriersum(F, T, time_grid);
    original_signal = double(subs(xt, t, time_grid));
    maxerrors(N) = max(abs(original_signal - reconstructed_signal));
end

figure;
plot(1:100, maxerrors, 'r', 'LineWidth', 2);
title('Maximum Absolute Error vs N');
xlabel('N');
ylabel('Maximum Absolute Error');
grid on;


