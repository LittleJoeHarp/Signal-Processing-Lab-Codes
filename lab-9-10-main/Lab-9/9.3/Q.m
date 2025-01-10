% Parameters
fs = 10000;
a = 0.2; 
d = 0.2; 
s = 0.3; 
sd = 0.2; 
r = 0.4;


[t_env, env] = envelope(a, d, s, sd, r, fs);


td = a + d + sd + r;
P = zeros(1,5);
N = 5;
f0 = 50;
A =   1./(1:N) ;


x_b = harmonics(A, f0, P, td, fs);


min_length = min(length(x_b), length(env));
x_b = x_b(1:min_length);
env = env(1:min_length);
t_env = t_env(1:min_length);


xn_env = x_b .* env;


sound(x_b, fs); 
audiowrite('Original_change4.wav', x_b, fs);
pause(length(x_b)/fs + 1); 

sound(xn_env, fs);
audiowrite('Envelope_change3.wav', xn_env, fs);
% Plotting
figure;
subplot(3,1,1);
plot((0:length(x_b)-1)/fs, x_b);
title('Harmonic Signal (x_b)');
xlabel('Time [s]'); ylabel('Amplitude');
grid on;

subplot(3,1,2);
plot(t_env, env);
title('Envelope (ADSR)');
xlabel('Time [s]'); ylabel('Amplitude');
grid on;

subplot(3,1,3);
plot((0:length(xn_env)-1)/fs, xn_env);
title('Enveloped Signal (x_b .* env)');
xlabel('Time [s]'); ylabel('Amplitude');
grid on;
