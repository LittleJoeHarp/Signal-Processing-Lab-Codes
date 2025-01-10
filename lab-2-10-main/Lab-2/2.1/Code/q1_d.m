load('q1.mat');  % Assuming the signal is stored in variable s
N = [10,50,100,500];
figure;
for i = 1:length(N)
y = moving_average(s, N(i));
subplot(2,2,i);
plot(y, 'r','DisplayName', 'Trend');
title(['Trend of the Imported signal with N = ', num2str(N(i))]);
xlabel('n');
ylabel('Amplitude');
legend;
grid on;
end