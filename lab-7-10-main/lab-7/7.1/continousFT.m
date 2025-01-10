function X = continousFT(t,x_t,a,b,w)
X = zeros(size(w));

for k = 1:length(w)
  integrand =  x_t .* exp(-1j * w(k) * t);
   X(k) = int(integrand,t,a,b);
   
end
end


