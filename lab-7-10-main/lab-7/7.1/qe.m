syms t;

x_t = 1 - abs(t);
w = -5:0.1:5;
a = -1;
b = 1;
X = continousFT(t,x_t,a,b,w);
figure;
subplot(2,2,1);
plot(w,real(X));
title("Real part of CTFT");
xlabel('\omega');
ylabel('Amplitude');
grid on;
subplot(2,2,2);
plot(w,imag(X));
title("Imaginary part of CTFT");
xlabel('\omega');
ylabel('Amplitude');
grid on;
subplot(2,2,3);
plot(w,abs(X));
title("Magnitude of CTFT");
xlabel('\omega');
ylabel('Amplitude');
grid on;
subplot(2,2,4);
plot(w,angle(X));
title("Phase of CTFT");
xlabel('\omega');
ylabel('Amplitude');
grid on;



