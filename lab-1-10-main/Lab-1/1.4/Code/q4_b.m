syms t;

T1 = 0.1; 


T_values = [1, 10, 20];

figure;
for i = 1:length(T_values)
    T = T_values(i);
    t1 = -T1;
    t2 = T1;
    N = 10*T;
    x_t = piecewise(-T1 <= t & t <= T1, 1, -T/2 <= t & t <= -T1, 0, T1 <= t & t <= T/2, 0);

    % Compute FS coefficients
    F = fourierCoeff(t, x_t, T, t1, t2, N);
    scaled_F = T * F;
    
    % Plot the scaled coefficients
    subplot(length(T_values), 1, i);
    k = -N:N; 
    stem(k, scaled_F, 'filled');
    title(['Scaled FS Coefficients for T = ', num2str(T)]);
    xlabel('k');
    ylabel('T * a_k');
    grid on;
end
