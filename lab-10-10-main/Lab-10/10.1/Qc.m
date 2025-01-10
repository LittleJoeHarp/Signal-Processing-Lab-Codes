% Contains Part c-a 
w = linspace(-pi,pi,14001);
N = 51 ;
n = 0:N-1 ;

w_c = pi/7 ;
n_c =(N-1)/2 ;

h_d = sin(w_c * (n - n_c)) ./ (pi * (n - n_c));
h_d(n == n_c) = w_c / pi;

w_n = blackman(N)';
h_n = h_d .* w_n;

figure;
subplot(2,1,1);
plot(n, h_d);
title('Filter - Blackman Window');
xlabel('n');
ylabel('h_d[n]');
grid on;

subplot(2,1,2);
plot(n, w_n); % Use log10 for decibels
title(' Blackman Window');
xlabel('n');
ylabel('w[n]');
grid on;
% Contains Part c-b

H_n = fft(h_n, 1001);
% Recommended to Normalize the DFT 
H_m = abs(H_n) / max(abs(H_n)); 
f = linspace(-pi, pi, 1001);

figure;
subplot(3,1,1);
plot(n, h_n);
title('Filter Coefficients h[n] - Blackman Window');
xlabel('n');
ylabel('h[n]');
grid on;

subplot(3,1,2);
plot(f, 20*log10(H_m)); % Use log10 for decibels
title('Magnitude Response (dB) - Blackman Window');
xlabel('Frequency (rad/sample)');
ylabel('Magnitude (dB)');
ylim([-100 10]);
grid on;

subplot(3,1,3);
plot(f, angle(H_n));
title('Phase Response - Blackman Window');
xlabel('Frequency (rad/sample)');
ylabel('Phase (radians)');
grid on;
