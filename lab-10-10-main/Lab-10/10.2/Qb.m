N1 = 3; 
N2 = 21; 

n1 = -(N1-1)/2:(N1-1)/2;
n2 = -(N2-1)/2:(N2-1)/2;

h_diff1 = zeros(size(n1));
h_diff2 = zeros(size(n2));

for i = 1:length(n1)
    if n1(i) ~= 0
        h_diff1(i) = (-1)^n1(i) / n1(i);
    end
end

for i = 1:length(n2)
    if n2(i) ~= 0
        h_diff2(i) = (-1)^n2(i) / n2(i);
    end
end

h_fir3 = h_diff1 .* hamming(N1)';
h_fir21 = h_diff2 .* hamming(N2)';

figure;
subplot(2,1,1);
stem(n1, h_fir3, 'filled');
title('FIR Differentiator Filter (N = 3)');
xlabel('n');
ylabel('h[n]');

subplot(2,1,2);
stem(n2, h_fir21, 'filled');
title('FIR Differentiator Filter (N = 21)');
xlabel('n');
ylabel('h[n]');