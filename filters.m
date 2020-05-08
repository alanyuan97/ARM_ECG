Wn = 5*2/f_s;
N = 50;                                                          
[a,b] = fir1(N,Wn,'high',rectwin(51));                                   
preprocessed2 = filter(a,b,preprocessed1); 
fvtool(b,a);