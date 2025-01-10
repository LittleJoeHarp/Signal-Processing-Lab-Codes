fs = 10000;
A = [0.5,0.5];
P = [0,0];
F2 = [480,620];
td2 = 0.5;

b1 = SineSum(A,F2,P,td2,fs);
z1 = zeros(1,length(b1));

x_n2 = repmat([b1,z1],1,4);
sound(x_n2,fs);
audiowrite('qb.wav',x_n1,fs);
