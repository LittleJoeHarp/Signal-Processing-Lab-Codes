w = -10:0.01:10;
b = [0.01,0.5,0.99];
for k = 1:length(b)
a_1 = b(k);
a_2 = -b(k);
n = 0:100;
x1 = (a_1).^n ;
N0_1 = 1;
X_w1 = DT_Fourier(x1,N0_1,w);
x2 = (a_2).^n ;
N0_2 = 1;
X_w2 = DT_Fourier(x2,N0_2,w);
figure;
annotation('textbox',[0 0.95 1 0.05],'String',['Plots for b = ',num2str(b(k))],'EdgeColor','none','HorizontalAlignment','center','FontSize',20);
subplot(2,2,1);
plot(n,x1);
title('Plot for a = b');
xlabel('n');
ylabel('a^(n)u(n)');
subplot(2,2,2);
plot(n,x2);
title('Plot for a = -b');
xlabel('n');
ylabel('a^(n)u(n)');
subplot(2,2,3);
plot(w,abs(X_w1));
title('Magnitude Spectrum of DTFT signal for a = b' );
xlabel('w');
ylabel('|X(w)|');
subplot(2,2,4);
plot(w,abs(X_w2));
title('Magnitude Spectrum of DTFT signal for a = -b');
xlabel('w');
ylabel('|X(w)|');

end