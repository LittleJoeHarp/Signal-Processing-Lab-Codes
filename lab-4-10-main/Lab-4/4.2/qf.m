n = 0:1000;
w = -10:0.01:10;
w_0 = pi/200 ;
M_values = [5, 21, 51];
v_n = randn(size(n));
s_n = 5*sin(w_0*n);
x_n = s_n + v_n;
X_w = DT_Fourier(x_n,1,w);
figure;
subplot(2,2,1)
plot(w,abs(X_w));
title('DTFT of Noisy Signals');
xlabel('w');
ylabel('|X(w)|');
legend;
for i = 1:length(M_values)
    M = M_values(i);
    h_n = ones(1, M) / M;    
    y_n = conv(x_n, h_n); 
    Y_w = DT_Fourier(y_n,1,w);
    subplot(2,2,i+1);
    plot(w,abs(Y_w));
    title(['DTFT of Filtered Signal with M = ', num2str(M)]);
    xlabel('w');
    ylabel('|Y(w)|');
end