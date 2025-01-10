function y = partialfouriersum (A, T, time_grid)
N = (length(A)-1)/2 ;
y = zeros(size(time_grid)) ;
w = 2*pi/T ;
for J=-N:N
   y = y + A(J+N+1)*exp(1i*J*w*time_grid);
end
y = real(y);
end