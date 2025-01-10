
% Part e: Find coefficients such that h[n] oscillates
% Roots should be on the unit circle with imaginary parts
n = 0:20;
alpha = -1/sqrt(2); % Example value
beta = sqrt(2);  % Example value
a = [1, alpha, beta];
b = 1;
h_b = impz(b, a, n);
figure;
stem(n, h_b, 'filled');
title(['Impulse Response for grow intially and decays h[n]']);
xlabel('n');
ylabel('h[n]');
axis([0 50 -1 1]);