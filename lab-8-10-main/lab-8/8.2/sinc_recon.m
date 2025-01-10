



function xr = sinc_recon(n, x_n, Ts, t_fine)
    xr = zeros(size(t_fine)); 
    omega_s = 2 * pi / Ts; 
    omega_c = omega_s / 2; 

    
    for k = 1:length(t_fine)
        xr(k) = sum(x_n .* sinc(omega_c*(t_fine(k)-n*Ts)) * (omega_c/pi)) * Ts;
    end
end
