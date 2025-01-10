function y = my_synthesizer(A, F_notes, P, adsr, td_notes, fs)
    
   
    y = [];
    for ii = 1:length(F_notes)
        % Scale ADSR parameters for the current note duration
        a = adsr(1) * td_notes(ii);
        d = adsr(2) * td_notes(ii);
        s = adsr(3);
        sd = adsr(4) * td_notes(ii);
        r = adsr(5) * td_notes(ii);
         t = 0:1/fs:td_notes(ii);
        [~ , env] = envelope(a, d, s, sd, r, fs);

         env = env(1:min(length(t), length(env))); 
        if length(env) < length(t)
            env = [env, zeros(1, length(t) - length(env))];
        end

       
        xt = harmonics(A, F_notes(ii), P, td_notes(ii), fs);

        
        xt = xt(1:min(length(t), length(xt))); 
        if length(xt) < length(t)
            xt = [xt, zeros(1, length(t) - length(xt))]; 
        end

        % Modulate the harmonics with the envelope
        xte = xt .* env;
        y = [y, xte];

    end
end