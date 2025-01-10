N = 5;
A = 1 + sin(pi * (1:N) / N);    
P = zeros(1, N);      
adsr = [0.2, 0.2, 0.7, 0.4, 0.2];  
fs = 10000;            

M = 5;
F_notes = 100:-10:40;   % Frequencies for notes
td_notes = ones(1, length(F_notes));


yn = my_synthesizer(A, F_notes, P, adsr, td_notes, fs);


soundsc(yn, fs);
audiowrite('Q2.wav', yn, fs);

