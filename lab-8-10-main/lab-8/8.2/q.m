t = 0:0.001:2 ;
x_t = cos(5*pi*t) + sin(10*pi*t);
t_s = 0:0.1:2;
x_n = cos(5*pi*t_s) + sin(10*pi*t_s);


figure;
subplot(2,2,1);
plot(t,x_t,'DisplayName','Continuous signal','LineWidth',1.5);
hold on;
stem(t_s,x_n,'filled','DisplayName','Sampled signal','LineWidth',1.5)
xlabel('t');
ylabel('Amplitude');
title('Continuous-Time Signal and Sampled Signal');
grid on;

x_reconst1 = interp1(t_s,x_n,t,'previous');



subplot(2,2,2);
plot(t,x_reconst1,'DisplayName','Reconstructed signal','LineWidth',1.5);
hold on;
stem(t_s,x_n,'filled','DisplayName','Sampled signal','LineWidth',1.5)
xlabel('t');
ylabel('Amplitude');
title('Zero-Order Hold Reconstruction');
grid on;


x_reconst2 = interp1(t_s,x_n,t,'linear');

subplot(2,2,3);
plot(t,x_reconst2,'DisplayName','Reconstructed signal','LineWidth',1.5);
hold on;
stem(t_s,x_n,'filled','DisplayName','Sampled signal','LineWidth',1.5)
xlabel('t');
ylabel('Amplitude');
title('Linear interpolation');
grid on;

Ts = 0.1;
xr_sinc = sinc_recon(t_s, x_n, Ts, t);

% reconstructed_signal = zeros(size(t));
% for n = 1:length(t_s)
        % reconstructed_signal = reconstructed_signal + x_ns(n) * sinc((t - t_s(n)) / Ts); 
% end
subplot(2,2,4);
plot(t, xr_sinc,'DisplayName','Reconstructed signal','LineWidth',1.5);
hold on;
stem(t_s,x_n,'filled','DisplayName','Sampled signal','LineWidth',1.5)
xlabel('t');
ylabel('Amplitude');
title('Sinc Interpolation');
grid on;

% Compute Maximum Absolute Error (MAE) in the interval [0.25, 1.75]
idx_range = (t >= 0.25) & (t <= 1.75); % Indices for the interval [0.25, 1.75]
x_t_range = x_t(idx_range); % Original signal in the interval

% MAE for Zero-Order Hold Reconstruction
mae_zero_order = max(abs(x_t_range - x_reconst1(idx_range)));

% MAE for Linear Interpolation
mae_linear = max(abs(x_t_range - x_reconst2(idx_range)));

% MAE for Sinc Interpolation
mae_sinc = max(abs(x_t_range - xr_sinc(idx_range)));

% Display the MAE results
fprintf('Maximum Absolute Error (MAE) in the interval [0.25, 1.75]:\n');
fprintf('Zero-Order Hold Reconstruction: %.4f\n', mae_zero_order);
fprintf('Linear Interpolation: %.4f\n', mae_linear);
fprintf('Sinc Interpolation: %.4f\n', mae_sinc);










