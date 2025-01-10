% Load the test sequences
load('q2_1.mat'); % Assuming the signal is stored in variable 'x1'
load('q2_2.mat'); % Assuming the signal is stored in variable 'x2'

% Define M values
M_values = [2, 3];
for i = 1:2
    if i == 1
        x = x1;
    else
        x = x2;
    end
    
    for M = M_values
        % Zero-order hold
        y_zero_order = upsample_zero_order(x, M);

        % Linear interpolation
        y_linear = upsample_linear(x, M);

        % Plot the results
        figure;
        subplot(3,1,1);
        plot(x);
        title(['Original Signal x', num2str(i)]);
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
end
