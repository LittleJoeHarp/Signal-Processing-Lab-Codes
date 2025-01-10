% Contains Part a 

N = 51 ;
n = 0:N-1 ;

w_c = pi/7 ;
n_c =(N-1)/2 ;


h_d = sin(w_c * (n - n_c)) ./ (pi * (n - n_c));
h_d(n == n_c) = w_c / pi;

w_n = rectwin(N)';
h_n = h_d .* w_n;
h1_n = (-1).^ n .* h_n ;

figure;
subplot(3,1,1);
plot(n, h_d);
title('Filter - Rectangular Window');
xlabel('n');
ylabel('h_d[n]');
grid on;

subplot(3,1,2);
plot(n, w_n); % Use log10 for decibels
title(' Rectangular Window');
xlabel('n');
ylabel('w[n]');
grid on;

subplot(3,1,3);
plot(n, h1_n);
title('New Filter');
xlabel('n');
ylabel('h_1[n]');
grid on;
% Contains Part b

H_n = fft(h1_n, 1001);
% Recommended to Normalize the DFT 
H_m = abs(H_n) / max(abs(H_n)); 
f = linspace(-pi, pi, 1001);

figure;
subplot(3,1,1);
plot(n, h1_n);
title('Filter Coefficients h[n] - Rectangular Window');
xlabel('n');
ylabel('h[n]');
grid on;

subplot(3,1,2);
plot(f, 20*log10(H_m)); % Use log10 for decibels
title('Magnitude Response (dB) - Rectangular Window');
xlabel('Frequency (rad/sample)');
ylabel('Magnitude (dB)');
ylim([-100 10]);
grid on;

subplot(3,1,3);
plot(f, angle(H_n));
title('Phase Response - Rectangular Window');
xlabel('Frequency (rad/sample)');
ylabel('Phase (radians)');
grid on;
