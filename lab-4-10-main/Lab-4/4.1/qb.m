w = -10:0.01:10;

x1 = [1];
N0_1 = 1;
X_w1 = DT_Fourier(x1,N0_1,w);
figure;
annotation('textbox',[0 0.95 1 0.05],'String','Plots of \delta[n]','EdgeColor','none','HorizontalAlignment','center','FontSize',20);
subplot(2,2,1);
plot(w,abs(X_w1));
title('Magnitude Spectrum of DTFT signal');
xlabel('w');
ylabel('|X(w)|');
subplot(2,2,2);
plot(w,angle(X_w1));
title('Phase spectrum of DTFT signal');
xlabel('w');
ylabel('<X(w)');
subplot(2,2,3);
plot(w,real(X_w1));
title('Real part of DTFT signal');
xlabel('w');
ylabel(' Real of X(w)');
subplot(2,2,4);
plot(w,imag(X_w1));
title('Imaginary Part of DTFT signal');
xlabel('w');
ylabel('Imaginary of X(w)');



x2 = [1];
N0_2 = 4;
X_w2 = DT_Fourier(x2,N0_2,w);
figure;
annotation('textbox',[0 0.95 1 0.05],'String','Plots of \delta[n+3]','EdgeColor','none','HorizontalAlignment','center','FontSize',20);
subplot(2,2,1);
plot(w,abs(X_w2));
title('Magnitude Spectrum of DTFT signal');
xlabel('w');
ylabel('|X(w)|');
subplot(2,2,2);
plot(w,angle(X_w2));
title('Phase spectrum of DTFT signal');
xlabel('w');
ylabel('<X(w)');
subplot(2,2,3);
plot(w,real(X_w2));
title('Real part of DTFT signal');
xlabel('w');
ylabel(' Real of X(w)');
subplot(2,2,4);
plot(w,imag(X_w2));
title('Imaginary Part of DTFT signal');
xlabel('w');
ylabel('Imaginary of X(w)');


x3 = ones(1,7);
N0_3 = 4;
X_w3 = DT_Fourier(x3,N0_3,w);
figure;
annotation('textbox',[0 0.95 1 0.05],'String','Plots of Rectangular pulse','EdgeColor','none','HorizontalAlignment','center','FontSize',20);
subplot(2,2,1);
plot(w,abs(X_w3));
title('Magnitude Spectrum of DTFT signal');
xlabel('w');
ylabel('|X(w)|');
subplot(2,2,2);
plot(w,angle(X_w3));
title('Phase spectrum of DTFT signal');
xlabel('w');
ylabel('<X(w)');
subplot(2,2,3);
plot(w,real(X_w3));
title('Real part of DTFT signal');
xlabel('w');
ylabel(' Real of X(w)');
subplot(2,2,4);
plot(w,imag(X_w3));
title('Imaginary Part of DTFT signal');
xlabel('w');
ylabel('Imaginary of X(w)');


w_c = pi/4;
n = -200:200;

x4 = sin(w_c.*n);
N0_4 = 201;
X_w4 = DT_Fourier(x4,N0_4,w);
figure;
annotation('textbox',[0 0.95 1 0.05],'String','Plots of sin(\omega_o n)','EdgeColor','none','HorizontalAlignment','center','FontSize',20);
subplot(2,2,1);
plot(w,abs(X_w4));
title('Magnitude Spectrum of DTFT signal');
xlabel('w');
ylabel('|X(w)|');
subplot(2,2,2);
plot(w,angle(X_w4));
title('Phase spectrum of DTFT signal');
xlabel('w');
ylabel('<X(w)');
subplot(2,2,3);
plot(w,real(X_w4));
title('Real part of DTFT signal');
xlabel('w');
ylabel(' Real of X(w)');
subplot(2,2,4);
plot(w,imag(X_w4));
title('Imaginary Part of DTFT signal');
xlabel('w');
ylabel('Imaginary of X(w)');



