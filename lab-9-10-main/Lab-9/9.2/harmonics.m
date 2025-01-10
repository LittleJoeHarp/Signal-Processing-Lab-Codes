function xn = harmonics(A, f0, P, td, fs)
   
    % Generate the time vector
    t = 0:1/fs:td;

    % Number of harmonics
    N = length(A);

    % Generate the harmonics sum
    xn = sum(A(:) .* sin(2 * pi * (1:N)' * f0 * t + P(:)), 1);
end