syms t;
expr = t * sin(t);
F = int(expr, t, 0, 1);
fprintf('Integral  Value of t*sin(t) from 0 to 1 :c%f\n',F);

