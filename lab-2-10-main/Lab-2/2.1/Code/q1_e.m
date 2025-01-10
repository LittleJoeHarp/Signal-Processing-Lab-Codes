
load('q1.mat');  % Assuming the signal is stored in variable s
N = 10;
n = -10:20;
delta_n = zeros(size(n)); % Create an array of zeros
delta_n(n == 0) = 1;
h = moving_average(delta_n,N);
trend_s_conv = conv(s, h);
y = moving_average(s, N);

figure;
subplot(2,1,1);
stem(n,delta_n, 'b', 'DisplayName', 'Original Signal',LineStyle='-',LineWidth=1.5);
title('Delta[n]');
xlabel('n');
ylabel('Amplitude');
legend;
subplot(2,1,2);
stem(n, h, 'r', 'DisplayName', 'Impulse Response',LineStyle= '--',LineWidth=2.5);
title('Impulse Response of MA System');
xlabel('n');
ylabel('Amplitude');
legend;

figure;
plot(s, 'b', 'DisplayName', 'Original Signal',LineStyle='-',LineWidth=1.5);
hold on;
plot(trend_s_conv, 'r', 'DisplayName', 'trend convolution',LineStyle= '--',LineWidth=2.5);
hold on;
plot(y, 'g', 'DisplayName', 'trend function',LineStyle= '--',LineWidth=1.5);
title('Trend Using Convolution and Function');
xlabel('n');
ylabel('Amplitude');
legend;
