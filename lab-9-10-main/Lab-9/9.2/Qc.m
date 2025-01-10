fs = 10000 ;
td = 1;
N_values = [10, 15];
f0_values = [100, 150, 200];
for N = N_values
    P_current = zeros(1, N);  
    for f0 = f0_values
       
        A = 1 ./ (1:N);  % 1/k
        x_c1 = harmonics(A, f0, P_current, td, fs);
        sound(x_c1, fs);
        pause(td+0.5);

    end
end
for N = N_values
    P_current = zeros(1, N);  
    for f0 = f0_values

        A = exp(-(1:N));  % exp(-k)
        x_c2 = harmonics(A, f0, P_current, td, fs);
        sound(x_c2, fs);
        pause(td+0.5);
    end
end