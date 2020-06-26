close all
clear all
load data.mat

%NEED TO FIND FILET

fs = 500; %samples/sec
ECG = x_train(3,:,3);

%% PREPROCESSING

%Low pass filter (need to use hexadecimal and account for FPGA accuracy)
f1=5;                                                                      % cuttoff low frequency to get rid of baseline wander
f2=15;                                                                     % cuttoff frequency to discard high frequency noise
Wn=[f1 f2]*2/fs;                                                           % cutt off based on fs
N = 3;                                                                     % order of 3 less processing
[a,b] = butter(N,Wn);  
pre1 = filter(a,b,ECG);

% N = 3;                                                                     % order of 3 less processing
% [a,b] = fir1(N,5*2/fs,'high');  
% pre1 = filter(a,b,ECG);
% 
% N = 30;                                                                     % order of 3 less processing
% [a,b] = fir1(N,15*2/fs,rectwin(N+1));  
% pre1 = filter(a,b,pre1);

%Derivative filter
pre2 = filter([2 1 0 -1 -2],[1],pre1)/8;

%Squaring function
pre3 = pre2.^2;

%Moving window integration
window_length = 0.150; %s, PAN TOMPKINS paper chooses N so that the length of window is 150ms
N = window_length*fs;
pre4 = filter(ones(N,1),[1],pre3);

figure;
subplot(3,2,1);
plot(ECG);
subplot(3,2,2);
plot(pre1);
subplot(3,2,3);
plot(pre2);
subplot(3,2,4);
plot(pre3);
subplot(3,2,5);
plot(pre4);

%% BEAT DETECTION
filtered = pre4;
increasing = 1;
out = zeros(length(filtered),1);
SPK = zeros(length(filtered),1);
NPK = zeros(length(filtered),1);
THR1 = zeros(length(filtered),1);
THR2 = zeros(length(filtered),1);
refractory_period = 0.2*fs;
count = 0;
RR = [5000];
maximum = 0;
above_THR1 = 0;
peak_i = 0;
peak = 0;

for i=2:1:length(filtered)
    if i<2*fs
        if filtered(i) > maximum 
            maximum = filtered(i);
        end
        SPK(i)=maximum; %ORIGINAL DIVIDES BY 4
        NPK(i) = NPK(i-1) + 0.5*filtered(i)/(2*fs);
    else
        if length(RR) > 8
           RR_ave = mean(RR(end-7:end));
        else
           RR_ave = mean(RR);
        end

        if (filtered(i-2)<filtered(i-1)) && (filtered(i)<filtered(i-1))
            if (filtered(i-1)>THR1(i-1))
                if count<=refractory_period
                    if peak < filtered(i-1)
                        if peak_i ~= 0
                            out(peak_i) = 0; 
                            SPK(peak_i:i-1) = ones(i-peak_i,1)*SPK(peak_i-1);
                        end
                        SPK(i) = 0.125*filtered(i-1) + 0.875*SPK(i-1);
                        RR = [RR; count];
                        out(i-1) = filtered(i-1);
                        peak_i = i-1;
                        peak = filtered(i-1);
                        count = 0;
                    else
                        NPK(i) = 0.125*filtered(i-1) + 0.875*NPK(i-1);
                    end
                else
                    SPK(i) = 0.125*filtered(i-1) + 0.875*SPK(i-1);
                    RR = [RR; count];
                    out(i-1) = filtered(i-1);
                    peak_i = i-1;
                    peak = filtered(i-1);
                    count = 0;
                end
            else
                NPK(i) = 0.125*filtered(i-1) + 0.875*NPK(i-1);
            end
        end
        if SPK(i)==0 
            SPK(i)=SPK(i-1);
        end
        if NPK(i)==0 
            NPK(i)=NPK(i-1);
        end
        THR1(i) = NPK(i) + 0.25*(SPK(i)-NPK(i));
        THR2(i) = THR1(i)/2;
        count = count + 1;
        
        if (count > 1.16*RR_ave) && (length(RR)>=2) && (count > refractory_period)
            tmp = max(filtered(i-count+1:i)); %SHOULD THERE BE A +1?
            if tmp > THR2(i)
                peak_i = find(filtered==tmp);
                SPK(i) = 0.125*filtered(i-1) + 0.875*SPK(i-1);
                RR = [RR; count];
                peak = filtered(peak_i);
                out(peak_i) = peak;
                count = 0;
            end
        end
    end
end

figure;
hold on;
plot(filtered);
stem(out);
plot(THR1,'Color','red');
plot(THR2,'Color','green');
hold off;

%figure;
%pan_tompkin(ECG, fs, 1);
