syms t;
T = pi ;
a = -T;
b = T;
w = -5:0.1:5;

y_t = exp(-1i * t);
Y = continousFT(t,y_t,a,b,w);
figure;
subplot(2,2,1);
plot(w,real(Y));
title("Real part of CTFT");
xlabel('\omega');
ylabel('Amplitude');
grid on;
subplot(2,2,2);
plot(w,imag(Y));
title("Imaginary part of CTFT");
xlabel('\omega');
ylabel('Amplitude');
grid on;
subplot(2,2,3);
plot(w,abs(Y));
title("Magnitude of CTFT");
xlabel('\omega');
ylabel('Amplitude');
grid on;
subplot(2,2,4);
plot(w,angle(Y));
title("Phase of CTFT");
xlabel('\omega');
ylabel('Amplitude');
grid on;


x_t = cos(t);
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







