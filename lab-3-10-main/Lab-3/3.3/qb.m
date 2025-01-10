
r = 0.95;
Theta = pi/3;
b = [1, -2*cos(Theta), 1];        
a = [1, -2*r*cos(Theta), r^2];   
figure;
zplane(b, a);
title('Poles and Zeros for r = 0.95 and \theta = \pi/3');
grid on;

