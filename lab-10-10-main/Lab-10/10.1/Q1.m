% Contains Part a 
w = linspace(0,pi,2000);
N = 51 ;
n = 0:N-1 ;

w_c = pi/7 ;
n_c =(N-1)/2 ;


%h_d = sin(w_c * (n - n_c)) ./ (pi * (n - n_c));
% h_d(n == n_c) = w_c / pi;

H_d = zeros(size(w));
H_d(abs(w)<= w_c) = exp(-1j * w(abs(w) <= w_c) *n_c) ;
h_d = ifft(H_d,N);
figure;
subplot(2,1,1);
plot(n,h_d);
title('Filter - Rectangular Window');
xlabel('n');
ylabel('h_d[n]');
grid on;
subplot(2,1,2);
plot(w,(H_d));