n = 0:50; 

alpha = -1;
beta = 0.9;
a = [1, alpha, beta];
b = 1; 
h_a = impz(b, a, n);
figure;
stem(n, h_a, 'filled');
title('Impulse Response for α = -1 and β = 0.9');
xlabel('n');
ylabel('h[n]');
axis([0 50 -1 1]); 