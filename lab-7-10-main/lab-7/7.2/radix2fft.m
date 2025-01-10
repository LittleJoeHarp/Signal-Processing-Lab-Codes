function X = radix2fft(x)
    N = length(x);
    if N == 2
        X = [x(1) + x(2); x(1) - x(2)];
        return;
    end
    x_even = x(1:2:end);
    x_odd = x(2:2:end);
    X_even = radix2fft(x_even);
    X_odd = radix2fft(x_odd);
    X = zeros(N, 1);
    for k = 1:(N/2)
        twiddle = exp(-2i * pi * (k-1) / N) * X_odd(k);
        X(k) = X_even(k) + twiddle;
        X(k + N/2) = X_even(k) - twiddle;
    end
end

