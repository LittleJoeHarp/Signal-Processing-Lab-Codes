f_o = 12 ;
f_s = 64;
L = 16;
n = 0:L-1;
m_arr = [1,2,4,8];
p_n = cos(2*pi*f_o*n/f_s);
w_n = hann(L);

x_n = p_n.*transpose(w_n);
figure;
for i = 1:length(m_arr)
    m = m_arr(i);
    N = m*L;
    X_k = fft(x_n, N);
    subplot(2,2,i);
    if (m ==1||m==2)
    plot(0:length(X_k)-1,abs(X_k));
    else
    plot(0:N-1,abs(X_k));   
    end
    title(['DFT Magnitude  with Hanning window for m = ', num2str(m)]);
end  
