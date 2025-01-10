n = 0:1000;
w_0 = pi/200 ;
M_values = [5, 21, 51];


v_n = randn(size(n));
s_n = 5*sin(w_0*n);
x_n = s_n + v_n;

figure;
subplot(2,2,1)
plot(x_n, 'r', 'DisplayName', 'Noisy Version');
hold on;
plot(s_n, 'b', 'DisplayName', 'Original Signal');
title('Clean and Noisy Signals');
xlabel('n');
ylabel('Amplitude of s(n) and x(n)');
legend;
for i = 1:length(M_values)
    M = M_values(i);
    h_n = ones(1, M) / M;    
    y_n = conv(x_n, h_n); 
    subplot(2,2,i+1);
    plot(y_n, 'r', 'DisplayName', 'Filter signal');
    hold on;
    plot(s_n, 'b', 'DisplayName', 'Original Signal');
    title(['Filtered Signal with M = ', num2str(M)]);
    xlabel('n');
    ylabel('Amplitude of s(n) and y(n)');
    legend('s[n]', 'y[n]');
end