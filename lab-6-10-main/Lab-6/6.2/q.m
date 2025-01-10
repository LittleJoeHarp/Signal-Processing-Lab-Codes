n = 0:9;
x_n = rand(1,10);
h_n = zeros(1,10);
h_n(4) = 1;
figure ;
subplot(2,2,1);
stem(n,x_n,'filled');
title('Random Sequence');
xlabel('n');
ylabel('Amplitude');
subplot(2,2,2);
stem(n,h_n,'filled');
title('\delta(n-3)');
xlabel('n');
ylabel('Amplitude');

y_n = conv(x_n,h_n);
subplot(2,2,3);
stem(0:length(y_n)-1,y_n,'filled');
title('Linear Convlution');
xlabel('n');
ylabel('Amplitude');

z_n =cconv(x_n,h_n,10);
subplot(2,2,4);
stem(0:length(z_n)-1,z_n,'filled');
title('Circular Convlution');
xlabel('n');
ylabel('Amplitude');