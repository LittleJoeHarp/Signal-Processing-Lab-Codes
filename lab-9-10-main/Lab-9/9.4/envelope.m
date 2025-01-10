function [t_env , env] = envelope(a,d,s,sd,r,fs)

t_attack = 0:1/fs:a ;
env_attack = linspace(0,1,length(t_attack));

t_decay = (a+1/fs) : 1/fs : (a+d);
env_delay = linspace(1,s,length(t_decay));

t_sustain = (a+d+1/fs) : 1/fs : (a+d+sd);
env_sustain = s * ones(1, length(t_sustain));

t_release = (a+d+sd+1/fs) : 1/fs : (a+d+sd+r);
env_release = linspace(s,0,length(t_release));

t_env = [t_attack,t_decay,t_sustain,t_release];
env = [env_attack,env_delay,env_sustain,env_release];

end