fs = 10000;
A = [0.5,0.5];
P = [0,0];
F3 = [440,480];
td3 = 2;

b2 = SineSum(A,F3,P,td3,fs);
z2 = zeros(1,length(b2));

x_n3 = repmat([b2,z2],1,4);
sound(x_n3,fs);
audiowrite('qc.wav',x_n1,fs);