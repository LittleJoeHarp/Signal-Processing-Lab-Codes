x = [1, -1];  
X_radix2 = radix2fft(x);
X_fft = fft(x);
disp('Output from radix2fft:');
disp(X_radix2);
disp('Output from fft:');
disp(X_fft);

