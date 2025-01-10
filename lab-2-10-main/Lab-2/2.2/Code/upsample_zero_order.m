function y = upsample_zero_order(x, M)
    L = length(x);
    y = zeros(1, L * M);
   
    for i = 1:length(y)
       if(rem(i,M)==0)
       y(i) = x(i/M);
       end
    end
    for i = M:M:length(y)
    y(i+1:i+M-1) = y(i) ;
    end
 end



