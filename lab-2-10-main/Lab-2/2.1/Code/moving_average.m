function y = moving_average(x, N)
    L = length(x);   % finding the length of vector x
    y = zeros(1, L); % initialize the vector y
  for n = 1:L
      sum = 0;       % to calculate the sum of elements from n-N+1 to n
      for i = max(1,n-N+1):n
        sum = sum + x(i);
      end
      y(n)=sum/N; % setting the y(n) to average
   end
end
