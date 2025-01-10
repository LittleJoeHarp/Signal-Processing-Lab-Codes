[x, Fs] = audioread('filename.wav');
y = quadratic_quant(x, 3, 1);
sound(x, Fs);  
pause(5);   
sound(y, Fs);  
