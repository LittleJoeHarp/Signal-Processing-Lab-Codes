function x_n = SineSum(A,F,P,td,fs)
 t = 0:1/fs:td - 1/fs ;
 N = length(A);
 x_n = zeros(size(t));
for K = 1:N
  x_n = x_n + A(K)*sin(2*pi*F(K)*t + P(K)) ;
end 

end