t = 0:0.001:2 ;
x_t = cos(5*pi*t) + sin(10*pi*t);
t_s = 0:0.01:2;
x_n = cos(5*pi*t_s) + sin(10*pi*t_s);
figure;

plot(t,x_t,'DisplayName','Continuous signal','LineWidth',1.5);
hold on;
stem(t_s,x_n,'filled','DisplayName','Sampled signal','LineWidth',1.5)
xlabel('t');
ylabel('Amplitude');
title('Continuous-Time Signal and Sampled Signal');
legend;
grid on;




