x_t = @(t) cos(5*pi*t);
t = 0:0.001:2 ;
Ts_arr= [0.1,0.2,0.3,0.4];
figure;
for i = 1:length(Ts_arr) 
   Ts = Ts_arr(i) ;
   x_real = x_t(t);
   t_s = 0:Ts:2 ;
   x_n = x_t(t_s); 
    x_reconst1 = interp1(t_s,x_n,t,'previous');
    subplot(2, 2, i);
    plot(t,x_real,'DisplayName','Original signal','LineWidth',1);
    hold on;
    plot(t,x_reconst1,'g','DisplayName','Reconstructed signal','LineWidth',1.5);
    hold on;
    stem( t_s,x_n,'r', 'LineWidth', 1);  
    title(['Zero Hold reconstruction with Ts = ', num2str(Ts), ' s']);
    xlabel('Time (s)');
    ylabel('Amplitude');
    grid on;
end
figure;
for i = 1:length(Ts_arr) 
   Ts = Ts_arr(i) ;
   t_s = 0:Ts:2 ;
   x_real = x_t(t);
   x_n = x_t(t_s); 
    x_reconst2 = interp1(t_s,x_n,t,'linear');
    subplot(2, 2, i);
    plot(t,x_real,'DisplayName','Original signal','LineWidth',1);
    hold on;
    plot(t,x_reconst2,'g','DisplayName','Reconstructed signal','LineWidth',1.5);
    hold on;
    stem( t_s,x_n,'r', 'LineWidth', 1);  
    title(['Linear Interpolation with Ts = ', num2str(Ts), ' s']);
    xlabel('Time (s)');
    ylabel('Amplitude');
    grid on;
end
figure;
for i = 1:length(Ts_arr) 
   Ts = Ts_arr(i) ;
   t_s = 0:Ts:2 ;
   x_real = x_t(t);
   x_n = x_t(t_s);  
  
    xr = zeros(size(t)); 
    omega_c = pi / Ts; 
    for k = 1:length(t)
       
        xr(k) = sum(x_n .* sinc(omega_c * (t(k) - t_s * Ts) / pi) * (omega_c/pi)* Ts);
    end
    
    
    subplot(2, 2, i);
    plot(t,x_real,'DisplayName','Original signal','LineWidth',1);
    hold on;
    plot(t,xr,'g','DisplayName','Reconstructed signal','LineWidth',1.5);
    hold on;
    stem( t_s,x_n,'r', 'LineWidth', 1);  
    title(['Sinc Interpolation with Ts = ', num2str(Ts), ' s']);
    xlabel('Time (s)');
    ylabel('Amplitude');
    grid on;
end