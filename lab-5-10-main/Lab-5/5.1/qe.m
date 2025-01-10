f_o = 12 ;
f_s = 64;
L_arr = [16,32,64,128];
figure;
for i = 1:length(L_arr)
    L = L_arr(i);
    n = 0:L-1;
    p_n = cos(2*pi*f_o*n/f_s);
    w_n = ones(1,L);
    x_n = p_n.*w_n;
    N = 8*L;
    X_k = fft(x_n, N);
    subplot(2,2,i);
    plot(0:N-1,abs(X_k));
    title(['DFT Magnitude for L = ', num2str(L)]);
end    