syms t;
T_arr = [1,4] ;
x_t = 1;
w = -5:0.1:5;
for i = 1:length(T_arr) 
T = T_arr(i);
a = -T;
b = T;
X = continousFT(t,x_t,a,b,w);
figure;

subplot(2,2,1);
plot(w,real(X));
title(['Real part of CTFT for T = ',num2str(T_arr(i))]);
xlabel('\omega');
ylabel('Amplitude');
grid on;
subplot(2,2,2);
plot(w,imag(X));
title(['Imaginary part of CTFT for T = ',num2str(T_arr(i))]);
xlabel('\omega');
ylabel('Amplitude');
grid on;
subplot(2,2,3);
plot(w,abs(X));
title(['Magnitude of CTFT for T = ',num2str(T_arr(i))]);
xlabel('\omega');
ylabel('Amplitude');
grid on;
subplot(2,2,4);
plot(w,angle(X));
title(['Phase of CTFT for T = ',num2str(T_arr(i))]);
xlabel('\omega');
ylabel('Amplitude');
grid on;
end