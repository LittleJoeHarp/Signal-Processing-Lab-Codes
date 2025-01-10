% Find coefficients for h[n] decaying monotonically
% The poles must lie inside the unit circle (|z| < 1)
% For decaying, both roots should be within the unit circle.
n = 0:50;
alpha = -0.5; % Example value
beta = 0.06;  % Example value
a = [1, alpha, beta];
b = 1;
h_b = impz(b, a, n);
figure;
stem(n, h_b, 'filled');
title('Impulse Response for Decaying h[n]');
xlabel('n');
ylabel('h[n]');
axis([0 50 -1 1]);




