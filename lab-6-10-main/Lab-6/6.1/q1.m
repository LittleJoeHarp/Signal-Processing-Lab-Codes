random_n = rand(1,10);
x = 0:9;
figure ;
subplot(3,1,1);
stem(0:9,random_n,'filled');
title('Random Sequence');
xlabel('n');
ylabel('Amplitude');

pulse_1 = ones(1,10);
Convolved_1 = conv(random_n,pulse_1);

subplot(3,1,2);
stem(0:length(Convolved_1)-1,Convolved_1,'filled');
title('Convolution Result with Unit Pulse Sequence (0 to 9)');
xlabel('n');
ylabel('Amplitude');



z = -4:5; 
pulse_2 = ones(1, 10); 
Convolved_2 = conv(random_n,pulse_2);
n    = z(1) + x(1) + (0:(length(Convolved_2)-1)) ;
subplot(3,1,3);
stem(n,Convolved_2,'filled');
title('Convolution Result with Unit Pulse Sequence (-4 to 5)');
xlabel('n');
ylabel('Amplitude');


