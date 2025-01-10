function X = DT_Fourier(x,N0,w)
N = length(x);
X = zeros(1,length(w));
n = (1:N) - N0;
   for k = 1:length(w)
        X(k) = sum(x .* exp(-1i * w(k) * n));
    end
end