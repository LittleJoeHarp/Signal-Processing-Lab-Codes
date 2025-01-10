fs = 100; 
T = 1/fs; 
t = 0:T:3; 
t_fine = 0:0.001:3; 

x_c = sin(2 * pi * t);
x_diff3 = conv(x_c, h_fir3, 'same'); 
x_diff21 = conv(x_c, h_fir21, 'same');

x_c_fine = interp1(t, x_c, t_fine, 'linear');
x_diff3_fine = interp1(t, x_diff3, t_fine, 'linear'); 
x_diff21_fine = interp1(t, x_diff21, t_fine, 'linear');

figure;

subplot(3, 1, 1);
plot(t_fine, x_c_fine);
title('Original Signal x_c(t) = sin(2\pi t)');
xlabel('Time (s)');
ylabel('Amplitude');

subplot(3, 1, 2);
plot(t_fine, x_diff3_fine);
title('Differentiated Signal using FIR Differentiator (N = 3)');
xlabel('Time (s)');
ylabel('Derivative');

subplot(3, 1, 3);
plot(t_fine, x_diff21_fine);
title('Differentiated Signal using FIR Differentiator (N = 21)');
xlabel('Time (s)');
ylabel('Derivative');