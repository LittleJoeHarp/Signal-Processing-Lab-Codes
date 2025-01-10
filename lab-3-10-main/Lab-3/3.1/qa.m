function [N,ROC,ROC_zero,S] = region_of_convergence(p)
p = unique(p);
mag = abs(p);
mag = unique(mag);
mag = sort(mag);
X = length(mag);
if(mag(1)==0)
    N = X;
else
N = X+1;
end
ROC = zeros(N,2);
S  = zeros(N,1);
ROC_zero = 0;
if(mag(1)==0)
if(N==1)
       r1 = mag(end);
       r2 = Inf;
       ROC(1, 1) = r1;
       ROC(1, 2) = r2;
       if r1 < 1 && r2 > 1
           ROC_zero = 1;
       end
       S(1) = 1;
else
  for i = 1:N
        if (i == 1) % Base case
            r1 = 0; 
            r2 = mag(2);
        elseif (i == N) % End case
            r1 = mag(end);
            r2 = Inf;
        else
            r1 = mag(i);
            r2 = mag(i+1);
        end
        ROC(i, 1) = r1;
        ROC(i, 2) = r2;
        if r1 < 1 && r2 > 1
            ROC_zero = 1;
        end
        if (r1 < 1 && r2 > 1)
            S(i) = 1;
        end   
  end   
end
else
for i = 1:N
        if (i == 1) % Base case
            r1 = 0; 
            r2 = mag(1);
        elseif (i == N) % End case
            r1 = mag(end);
            r2 = Inf;
        else
            r1 = mag(i-1);
            r2 = mag(i);
        end
        ROC(i, 1) = r1;
        ROC(i, 2) = r2;
        if r1 < 1 && r2 > 1
            ROC_zero = 1;
        end
        if (r1 < 1 && r2 > 1)
            S(i) = 1;
        end   
end
end
end
    
        
