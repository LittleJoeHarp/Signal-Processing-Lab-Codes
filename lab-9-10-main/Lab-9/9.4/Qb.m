% Define note frequencies in the Indian classical scale
note = struct(...
    'S', 261.63, ...   % Sa
    'R', 293.66, ...   % Re
    'G', 329.63, ...   % Ga
    'm', 349.23, ...   % Ma
    'P', 392.00, ...   % Pa
    'D', 440.00, ...   % Dha
    'n', 466.16, ...   % Komal Ni
    'N', 493.88, ...   % Ni
    's', 523.25,...
    'p', 196,...
    'd', 220 );    % High Sa

% Convert the song notes to corresponding frequencies
F_notes = [
    note.P, note.P, note.G, note.m, note.G, note.R, ...
    note.R, note.G, note.m, note.G, note.R, note.S, note.n, note.S, ...
    note.p, note.d, note.P, note.P, note.G, note.m, note.G, note.R, ...
    note.R, note.G, note.m, note.G, note.R, note.S, note.n, note.S, ...
    note.S, note.R, note.R, note.G, note.P, note.P, note.m, note.G, note.R, note.S, note.R, note.G, ...
    note.P, note.P, note.m, note.G, note.R, note.S, note.R, note.G, ...
    note.P, note.m, note.G, note.R, note.S, note.R, ...
    note.S, note.R, note.R, note.G, note.P, note.m, note.G, note.R, note.S, note.R, note.G, ...
    
];

% Duration for each note (in seconds)
td_notes = [
    0.4, 0.4, 0.4, 0.4, 0.4, 0.4, ...       % Mujhko
    0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, ... % Itna bataye koi
    0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4...       % Kaise tujhse
    0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, ... % Dil na lagaye koi
    0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4,0.4, 0.4,0.4, 0.4,...       % Rabba ne tujhko banaane me
    0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, ... % Kar di hain husn ki
    0.4, 0.4, 0.4, 0.4, 0.4, 0.4,  ... % Khaali tijoriyan
    0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4,0.4, 0.4,0.4, ... % Kitno ki love story’an
    
];

A = 1 ./ (1:5).^3;           
P = zeros(1, 5);              
adsr = [0.3, 0.2, 0.3, 0.4, 0.1];    
fs = 10000;                   

yn = my_synthesizer(A, F_notes, P, adsr, td_notes, fs);

% Play the sound
soundsc(yn, fs);

% Save the sound to a file
audiowrite('Qb.wav', yn, fs);