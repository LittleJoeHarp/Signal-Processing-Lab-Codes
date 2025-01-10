n = 0:3;
x_n = ones(1,4);
convoled_1 = conv(x_n,x_n);
convoled_2 = conv(x_n,convoled_1);
convoled_3 = conv(x_n,convoled_2);
figure;
subplot(2, 2, 1);
stem(n, x_n, 'filled');
title('Unit Pulse Sequence (0 to 3)');
xlabel('n');
ylabel('Amplitude');

subplot(2, 2, 2);
stem(0:length(convoled_1)-1, convoled_1, 'filled');
title('First Convolution Result');
xlabel('n');
ylabel('Amplitude');

subplot(2, 2, 3);
stem(0:length(convoled_2)-1, convoled_2, 'filled');
title('Second Convolution Result');
xlabel('n');
ylabel('Amplitude');

subplot(2, 2, 4);
stem(0:length(convoled_3)-1, convoled_3, 'filled');
title('Third Convolution Result');
xlabel('n');
ylabel('Amplitude');