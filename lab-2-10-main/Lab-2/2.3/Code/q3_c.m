n = 0:200; 
x_1 = ones(1, length(n));
x_2 = ones(1, length(n));
for i = 1:length(n)
    if n(i) < 100
        x_2(i) = 0;
    end
end
x = sin(pi/25)*(x_1-x_2);
y = digital_differentiator(x);
figure;

subplot(2,1,1);
stem(n, x, 'filled');
title('Input x[n] = sin(pi/25)(u[n] - u[n - 100])');
xlabel('n');
ylabel('x[n]');

subplot(2,1,2);
stem(n, y, 'filled');
title('Output y[n] for x[n] = sin(pi/25)(u[n] - u[n - 100])');
xlabel('n');
ylabel('y[n]');

