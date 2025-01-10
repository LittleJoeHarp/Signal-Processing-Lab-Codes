% Load the signal from the file q1.mat
load('q1.mat');  % Assuming the signal is stored in variable s
N = 10;
y = moving_average(s, N);

% Plot the original and trend signal
figure;
plot(s, 'b', 'DisplayName', 'Original Signal',LineStyle='-',LineWidth=1.5);
hold on;
plot(y, 'r', 'DisplayName', 'trend',LineStyle= '--',LineWidth=2.5);
title('Original Signal and Trend');
xlabel('n');
ylabel('Amplitude');
legend;
grid on;