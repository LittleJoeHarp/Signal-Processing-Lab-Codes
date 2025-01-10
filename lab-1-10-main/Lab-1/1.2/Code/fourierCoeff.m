function F = fourierCoeff(t, xt, T, t1, t2, N)
    F = zeros(1, 2*N + 1);
    w = 2*pi/T;
    for k = -N:N
        q_t = xt * exp(-1i * k * w * t);
        a_k = (1/T) * int(q_t, t, t1, t2);
        F(k + N + 1) = double(a_k);
    end
end