x1_n = rand(1,10);
x2_n = [zeros(1,3),1,zeros(1,6)];
figure;
subplot(1,2,1);
plot(x1_n);
title('X1(n)');
subplot(1,2,2);
stem(x2_n);
title('X2(n)');
figure;
Nl = length(x1_n)+length(x2_n)-1;
Nc = max(length(x1_n),length(x2_n));
% qb
linear_conv = conv(x1_n,x2_n);
circular_conv = cconv(x1_n,x2_n,Nc);
subplot(2,2,1)
stem(0:length(linear_conv)-1,linear_conv);
title(' Linear convultion Using Direct Method');
xlabel('n');
ylabel('Amplitude');
grid on;
subplot(2,2,2)
stem(0:length(circular_conv)-1,circular_conv);
title(' Circular convultion Using Direct Method');
xlabel('n');
ylabel('Amplitude');
grid on;
% qc

X1_li = fft(x1_n,Nl);
X2_li= fft(x2_n,Nl);
linear_dft = ifft(X1_li.*X2_li);
X1_c = fft(x1_n,Nc);
X2_c = fft(x2_n,Nc);
circular_dft = ifft(X1_c.*X2_c);
subplot(2,2,3)
stem(0:length(linear_dft)-1,real(linear_dft));
title(' Linear convultion Using DFT Method');
xlabel('n');
ylabel('Amplitude');
grid on;
subplot(2,2,4)
stem(0:length(circular_dft)-1,real(circular_dft));
title(' Circular convultion Using DFT Method');
xlabel('n');
ylabel('Amplitude');
grid on;

