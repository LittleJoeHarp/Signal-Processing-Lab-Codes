
n = 0:99;       % consider large length since it u(n) lasts until infinity
u = ones(1, length(n)); 
N = 20; 
y = moving_average(u, N);

figure;

subplot(2,1,1);
stem(n, u);
title('Unit Step Function u[n]');
xlabel('n');
ylabel('u[n]');

subplot(2,1,2);
stem(n, y);
title(['Output of the MA System with N = ', num2str(N)]);
xlabel('n');
ylabel('y[n]');
