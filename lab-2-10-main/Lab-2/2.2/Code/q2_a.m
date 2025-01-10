
M_values = [2, 3]; 
x = [1, 2, 3, 2, 1, 2, 3, 2, 1]; 

for M = M_values
    
    y_zero_order = upsample_zero_order(x, M);
    y_linear = upsample_linear(x, M);

    figure;
    subplot(3,1,1);
    stem(x, 'filled');
    title('Original Signal');
    xlabel('n');
    ylabel('x[n]');
    
    subplot(3,1,2);
    stem(1:length(y_zero_order), y_zero_order, 'filled');
    title(['Zero-Order Hold Upsampled Signal (M = ', num2str(M), ')']);
    xlabel('n');
    ylabel('y[n]');

    subplot(3,1,3);
    stem(1:length(y_linear), y_linear, 'filled');
    title(['Linear Interpolated Upsampled Signal (M = ', num2str(M), ')']);
    xlabel('n');
    ylabel('y[n]');
end
