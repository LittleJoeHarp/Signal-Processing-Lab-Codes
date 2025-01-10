n = 51;  
p_values = [0.8,1-1i];
for k = 1:length(p_values)
    p = p_values(k);
     b = [1, 0];  
    a = [1, -p];
    h = impz(b, a, n);
    figure;
    stem(h);
    title(sprintf('Impulse Response for p = %.2f + %.2fi', real(p), imag(p)));
    xlabel('n');
    ylabel('h[n]');
end
