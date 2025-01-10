% Part d: Find coefficients such that h[n] grows initially and then decays

n = 0:500;
alpha = -2; % Example value
beta = 0.9999;  % Example value
a = [1, alpha, beta];
b = 1;
h_b = impz(b, a, n);
figure;
stem(n, h_b, 'filled');
title(['Impulse Response for grow intially and decays h[n]']);
xlabel('n');
ylabel('h[n]');
axis([0 50 -1 1]);