f_o = 10;              
Fs = 5000;            
t = 0:1/Fs:1-1/Fs;
x = sin(2*pi*f_o*t);
a = 1;
B_arr = [1,2,3,4,5,6,7,8];
z = zeros(length(B_arr));
for i = 1:length(B_arr)
B = B_arr(i);
y = quadratic_quant(x,B,a);
e = x - y;
x_s = mean(x.^2);
e_s = mean(e.^2);
z(i) = x_s ./ e_s ;
end
figure;
plot(1:8,z);
title('Signal to Quantization Noise Ratio');
xlabel('B');
ylabel('Error');