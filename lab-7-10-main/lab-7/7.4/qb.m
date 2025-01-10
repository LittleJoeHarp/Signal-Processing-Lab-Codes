[x, Fs] = audioread('filename.wav');  
a = 1;
for B = 1:8
    y = quadratic_quant(x, B, a);
    sound(y, Fs);
    disp(['Playing quantized signal with B = ', num2str(B)]);
    pause(2);
end
