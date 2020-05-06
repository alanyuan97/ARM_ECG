f_s = 100; %samples/sec

ECG = x_train(2,:,1);

%% PREPROCESSING

%Low pass filter (need to use hexadecimal and account for FPGA accuracy)
h = [-15, -13, 7, 38, 66, 38, 7, -13, -15];
preprocessed1 = conv(ECG, h);

%Derivative filter
preprocessed2 = filter([2 1 0 -1 -2],[1],preprocessed1)/8;

%Squaring function
preprocessed3 = preprocessed2.^2;

%Moving window integration
window_length = 0.150; %s, PAN TOMPKINS paper chooses N so that the length of window is 150ms
N = window_length*f_s;
preprocessed4 = filter(ones(N,1),[1],preprocessed3);

figure;
subplot(2,2,1);
plot(ECG);
subplot(2,2,2);
plot(preprocessed1);
subplot(2,2,3);
plot(preprocessed3);
subplot(2,2,4);
plot(preprocessed4);

%% BEAT DETECTION
state = 0;
previous_sample = 0;
initial_period = 2*f_s;
THR = 0;
NPK = 0;
SPK = 0;

for i=1:1:length(preprocessed4)
    
end