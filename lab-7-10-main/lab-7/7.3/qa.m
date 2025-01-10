

f_o = 10;              
Fs = 5000;            
t = 0:1;
x = sin(2*pi*f_o*t);
a = 1;
B = 4;
y = quadratic_quant(x,B,a);
e = x - y;
figure;
subplot(3,1,1);
stem(t,x,'filled');
title('Sampled Signal');
xlabel('n');
ylabel('Amplitude');
subplot(3,1,2);
stem(t,y,'filled');
title('Quantized Signal');
xlabel('n');
ylabel('Amplitude');
subplot(3,1,3);
stem(t,e,'filled');
title('Error Signal');
xlabel('n');
ylabel('Amplitude');
figure;
histogram(e,15);

