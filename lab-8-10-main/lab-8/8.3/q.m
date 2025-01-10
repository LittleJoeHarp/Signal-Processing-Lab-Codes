triangular_pulse = @(t) max(0, 1 - abs(t)); 
t = -10:0.001:10 ;
Ts_arr= [0.5,0.2,0.1,0.05];
figure;
for i = 1:length(Ts_arr) 
   Ts = Ts_arr(i) ;
   t_s = -1:Ts:1 ;
   x_n = triangular_pulse(t_s); 
   reconstructed_signal = zeros(size(t));
    for n = 1:length(t_s)
        reconstructed_signal = reconstructed_signal + x_n(n) * sinc((t - t_s(n)) / Ts);
    end
    subplot(2, 2, i);
    plot(t, reconstructed_signal, 'b', 'LineWidth', 1.5);  
    hold on;
    stem(t_s, x_n, 'r', 'LineWidth', 1);  
    title(['Ts = ', num2str(Ts), ' s']);
    xlabel('Time (s)');
    ylabel('Amplitude');
    grid on;
end




    
