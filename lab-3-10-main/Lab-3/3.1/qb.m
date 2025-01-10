poles_set = {
    -1;
    0;
    0.3;
    [0,0.65];
    [1,-0.85];
    [0.45,-0.45];
    [2,2,2];
    [0,1,2];
    [-0.5,-1i];
    [0,1i,-1i];
    [1,-1,2+1i,2-1i];
    [1+1i,1+2i,1+3i,2-1j];
    [1,-1,1i,-1i];
  
};
for k = 1:length(poles_set)
    p = poles_set{k};

[N, ROC, ROC_zero, S] = qa(p); %qa is region_of_convergence 
    
    
    fprintf('Case %d:\n',k );
    fprintf('Input Poles: %s\n', mat2str(p));
    fprintf('N = %d\n', N);
    disp('ROC = ');
    disp(ROC);
    fprintf('ROC_zero = %d\n', ROC_zero);
    disp('S = ');
    disp(S);
    fprintf('------------------------\n');
end