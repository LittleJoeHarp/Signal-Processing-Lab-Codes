% Part c: Find coefficients for h[n] diverging monotonically
% The poles must lie outside the unit circle (|z| > 1)
n = 0:50;
alpha = -2.02; % Example value
beta = 1.0201;  % Example value
a = [1, alpha, beta];
b = 1;
h_b = impz(b, a, n);
figure;
stem(n, h_b, 'filled');
title('Impulse Response for Diverging monotonically h[n]');
xlabel('n');
ylabel('h[n]');
axis([0 50 -1 1]);