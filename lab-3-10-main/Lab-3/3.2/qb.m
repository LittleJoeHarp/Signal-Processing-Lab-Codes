
p_values = [0.8,1-1i];
for k = 1:length(p_values)
    p = p_values(k);
    b = [1, 0];  
    a = [1, -p]; 
    figure;
    zplane(b, a);
    title(sprintf('Pole-Zero Plot for p = %.2f + %.2fi', real(p), imag(p)));
    grid on;
end
