note = struct(...
    'Sa',261.63, ...
    'Re',293.66, ...
    'Ga',329.63, ...
    'Ma',349.23, ...
    'Pa',392, ...
    'Dha',440, ...
    'Ni',493.88, ...
    'SA',523.25);
F_notes = [
    note.Sa, note.Re, note.Ga, note.Ga, note.Ga, note.Ga, note.Ga, note.Re, note.Ga, note.Ma, ...
    note.Ga, note.Ga, note.Ga, note.Re, note.Re, note.Re, note.Ni, note.Re, note.Sa, ...
    note.Sa, note.Pa, note.Pa, note.Pa, note.Pa, note.Ma, note.Dha, note.Pa, note.Sa, ...
    note.Sa, note.Pa, note.Pa, note.Pa, note.Sa, note.Sa, note.Ga, note.Ma, note.Re, ...
    note.Dha, note.Pa, note.Sa, note.Sa, note.Ma, note.Pa, note.Ma, note.Ga, note.Ga, ...
    note.Dha, note.Pa, note.Sa, note.Ga, note.Ga, note.Pa, note.Ga, note.Sa, note.Sa ...
];

% Define durations for each note (approximate timing based on anthem tempo)
td_notes = [
    0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, ...
    0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1.0, ...
    0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1.0, ...
    0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, ...
    0.5, 0.5, 1.0, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, ...
    0.5, 0.5, 1.0, 0.5, 0.5, 0.5, 0.5, 0.5, 1.0 ...
];


A = 1 ./ (1:5).^3;           
P = zeros(1, 5);              
adsr = [0.3, 0.2, 0.3, 0.4, 0.1];  
fs = 10000;                   

yn = my_synthesizer(A, F_notes, P, adsr, td_notes, fs);

% Play the sound
soundsc(yn, fs);

% Save the sound to a file
audiowrite('Qa.wav', yn, fs);
