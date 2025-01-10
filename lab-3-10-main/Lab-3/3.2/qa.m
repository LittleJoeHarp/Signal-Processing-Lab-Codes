p_values = [0.8,1-1i];
[x,y] = meshgrid(-1.5:0.01:1.5,-1.5:0.01:1.5);
z = x + 1i*y ;
 for i = 1:length(p_values)
     p = p_values(i);
     X_Z = 1./(1-p*z.^(-1));
     log_x = log(abs(X_Z));
     figure;
     mesh(x,y,log_x);
     title(['Log|X(Z)| for p = ', num2str(p)]);
     xlabel('Real Part of Z');
     ylabel('Imaginary Part of Z');
     zlabel('log|X(Z)|');
     rotate3d on;
 end