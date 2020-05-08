%THIS FILE IS JUST FOR LOOKING AT THE FREQUENCY RESPONSE OF FILTERS
N = 39;                                                                     % order of 3 less processing
[a,b] = fir1(N,15*2/fs,rectwin(N+1));  
fvtool(a,b);