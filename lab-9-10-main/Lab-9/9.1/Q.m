fs = 10000 ;
A = [0.5 , 0.5] ;
P = [0,0];

% Part - a
F1 = [350,440];
td1 = 4 ;
x_n1 = SineSum(A,F1,P,td1,fs);
sound(x_n1,fs);
pause(td1+1);

% Part - b
F2 = [480,620];
td2 = 0.5;

b1 = SineSum(A,F2,P,td2,fs);
z1 = zeros(1,length(b1));

x_n2 = repmat([b1,z1],1,4);
sound(x_n2,fs);
pause(td2+1);

% Part - c
F3 = [440,480];
td3 = 2;

b2 = SineSum(A,F3,P,td3,fs);
z2 = zeros(1,length(b2));

x_n3 = repmat([b2,z2],1,4);
sound(x_n3,fs);
pause(td3+1);


% Part - e

figure;
subplot(3,1,1);
plot(x_n1(1:300));
title('Signal x1[n]');
xlabel('Sample Number');
ylabel('Amplitude');

subplot(3,1,2);
plot(x_n2(1:300));
title('Signal x2[n]');
xlabel('Sample Number');
ylabel('Amplitude');

subplot(3,1,3);
plot(x_n3(1:300));
title('Signal x3[n]');
xlabel('Sample Number');
ylabel('Amplitude');