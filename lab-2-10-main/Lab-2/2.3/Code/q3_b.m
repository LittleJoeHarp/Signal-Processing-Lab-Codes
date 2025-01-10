n = 0:100; 
x_1 = ones(1, length(n));
x_2 = ones(1, length(n));
x_3 = ones(1, length(n));
for i = 1:length(n)
    if n(i) < 10
        x_2(i) = 0;
    end
end
for i = 1:length(n)
    if n(i) < 20
        x_3(i) = 0;
    end
end
x = zeros(1, length(n));
for i = 1:length(n)
    x(i) = i*(x_1(i)-x_2(i)) + (20-i)*(x_2(i)-x_3(i));
end
y = digital_differentiator(x);
figure;

subplot(2,1,1);
stem(n, x, 'filled');
title('Input x[n] = n(u[n] - u[n - 10]) + (20-n)(u[n] - u[n - 20])');
xlabel('n');
ylabel('x[n]');

subplot(2,1,2);
stem(n, y, 'filled');
title('Output y[n] for x[n] = n(u[n] - u[n - 10]) + (20-n)(u[n] - u[n - 20])');
xlabel('n');
ylabel('y[n]');

