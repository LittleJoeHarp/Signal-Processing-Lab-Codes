
A = 1 ./ (1:5).^2;     
P = zeros(1, 5);      
adsr = [0.2, 0.2, 0.7, 0.4, 0.2];  
fs = 10000;            

M = 5;
F_notes = 50+ 50*rand(1,M);   
td_notes = 0.5 + rand(1,M); 


yn = my_synthesizer(A, F_notes, P, adsr, td_notes, fs);


soundsc(yn, fs);
audiowrite('Q2.wav', yn, fs);


