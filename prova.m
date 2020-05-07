f_s = 100; %samples/sec

ECG = x_train(500,:,1);

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
increasing = 1;
initial_period = 2*f_s;
THR1 = 0;
THR2 = 0;
NPK = 0;
SPK = 0;
out = zeros(length(preprocessed4),1);
refractory_period = 0.2*f_s;
count = 0;
previous_count = 0;
RR = [];

for i=2:1:length(preprocessed4)  
    if length(RR) > 8
        RR_ave = mean(RR(end-7:end));
    else
        RR_ave = mean(RR(1:end));
    end
    if (increasing == 1) && (preprocessed4(i)<preprocessed4(i-1))
        if ((preprocessed4(i-1)>THR1) || ((preprocessed4(i-1)>THR2) && (count>=1.16*RR_ave))) && (count>refractory_period)
            if i<200
                SPK = preprocessed4(i-1);  
            else
                SPK = 0.125*preprocessed4(i-1) + 0.875*SPK;
                RR = [RR; count];
            end
            out(i-1) = 1;
            count = 0;
        else
            if i<200
                NPK = preprocessed4(i-1);  
            else
                NPK = 0.125*preprocessed4(i-1) + 0.875*NPK;
            end
        end
        increasing = 0;
    end
    if (increasing == 0) && (preprocessed4(i)>=preprocessed4(i-1))
        increasing = 1;
    end
    THR1 = NPK + 0.25*(SPK-NPK);
    THR2 = THR1/8;
    count = count + 1;
end

figure;
hold on;
plot(preprocessed4);
stem(out'.*preprocessed4);
hold off;

figure;

pan_tompkin(ECG, f_s, 1);
