N = 51;
n = 0 : N-1;
w_c = pi / 7;
n_c = (N-1)/2;

n_samples = 0:200;
x_n = cos(pi * n_samples / 16) + 0.25 * randn(1,201);

% Define the impulse response h[n] for both windows
h_i = sin(w_c * (n - n_c)) ./ (pi * (n - n_c));
h_i(n == n_c) = w_c / pi; 

% Apply rectangular and Blackman windows
w_n = rectwin(N)';
h_n = h_i .* w_n;

w_n1 = blackman(N)';
h_n1 = h_i .* w_n1;

% Perform convolution to filter the signal
y_rect = conv(x_n, h_n);
y_blackman = conv(x_n, h_n1);

% Plotting the results
figure;
subplot(3,1,1);
plot(n_samples, x_n);
title('Original Signal');
xlabel('n');
ylabel('x[n]');
grid on;

subplot(3,1,2);
plot(0:length(y_rect)-1, y_rect);
title('Filtered Signal - Rectangular Window');
xlabel('n');
ylabel('y[n]');
grid on;

subplot(3,1,3);
plot(0:length(y_blackman)-1, y_blackman);
title('Filtered Signal - Blackman Window');
xlabel('n');
ylabel('y[n]');
grid on;
