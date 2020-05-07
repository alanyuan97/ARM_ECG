%LOW PASS Filter
h = [-15, -13, 7, 38, 66, 38, 7, -13, -15, zeros(1,360-9)];
figure;
plot(linspace(0,359,360),20*log(abs(fft(h)))/log(10));