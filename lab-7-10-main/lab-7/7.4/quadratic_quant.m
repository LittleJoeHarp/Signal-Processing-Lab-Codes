function y = quadratic_quant(x,B,a)
 L = 2^(B-1);
 r = linspace(0, 1, L+1);
 midpoints = (r(1:end-1) + r(2:end)) / 2;
 midpoints_pos = a * midpoints;
 midpoints_neg = -flip(midpoints_pos);
 
 y = zeros(size(x));
    
    
for i = 1:length(x)
        if x(i) < -a
            y(i) = midpoints_neg(1); 
        elseif x(i) >= a
            y(i) = midpoints_pos(end); 
        elseif x(i) >= 0
           
            idx = find(x(i) >= a*r(1:end-1) & x(i) < a*r(2:end), 1);
            y(i) = midpoints_pos(idx);
        else
           
            idx = find(x(i) >= -a*r(2:end) & x(i) < -a*r(1:end-1), 1);
            y(i) = midpoints_neg(idx);
        end
end

end