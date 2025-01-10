function y = upsample_linear(x, M)
    L = length(x);
    y = zeros(1, L * M);
     for i = 1:length(y)
       if(rem(i,M)==0)
       y(i) = x(i/M);
       end
    end
    for i = M:M:length(y)-M
        a = (y(i+M)-y(i))/M ;
        for j = 1:M-1
            y(i+j) = a*(j) + y(i);
        end
    end
end