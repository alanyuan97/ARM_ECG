%clear all
%close all
 
%x1 = load('ecg3.dat'); % load the ECG signal from the file
%x1=[-0.055 -0.051 -0.044 -0.038 -0.031 -0.025 -0.014  0.008  0.044  0.045 0.034  0.078  0.052 -0.028 -0.063 -0.066 -0.058 -0.072 -0.055 -0.066 -0.04   0.156  0.344  0.247  0.007 -0.081 -0.058 -0.073 -0.088 -0.057 -0.094 -0.072 -0.051 -0.088 -0.077 -0.077 -0.067 -0.066 -0.055 -0.058 -0.056 -0.036 -0.035 -0.011 -0.001 -0.014  0.041  0.081  0.064  0.124 0.151  0.137  0.117  0.071  0.054  0.034  0.001 -0.057 -0.071 -0.057 -0.075 -0.071 -0.057 -0.079 -0.085 -0.075 -0.076 -0.065 -0.07  -0.038 -0.044 -0.079 -0.07  -0.083 -0.057 -0.065 -0.073 -0.051 -0.086 -0.075 -0.073 -0.101 -0.1   -0.106 -0.102 -0.098 -0.093 -0.09  -0.084 -0.077 -0.071 -0.063 -0.061 -0.057 -0.087 -0.09  -0.082 -0.074 -0.058 -0.058 0.013  0.016 -0.023 -0.002 -0.005 -0.039 -0.081 -0.105 -0.114 -0.106 -0.102 -0.109 -0.14  -0.047  0.213  0.302  0.117 -0.053 -0.092 -0.086 -0.079 -0.097 -0.101 -0.087 -0.091 -0.102 -0.098 -0.106 -0.099 -0.077 -0.083 -0.095 -0.098 -0.086 -0.071 -0.06  -0.043 -0.023 -0.023 -0.006 0.059  0.094  0.105  0.137  0.128  0.104  0.072  0.026  0.002 -0.025 -0.046 -0.067 -0.065 -0.06  -0.065 -0.065 -0.081 -0.075 -0.07  -0.068 -0.058 -0.074 -0.097 -0.091 -0.065 -0.085 -0.07  -0.056 -0.081 -0.054 -0.061 -0.068 -0.07  -0.081 -0.066 -0.064 -0.055 -0.052 -0.051 -0.048 -0.045 -0.034 -0.054 -0.07  -0.056 -0.059 -0.06  -0.06  -0.065 -0.065 -0.063 -0.053 -0.024  0.029  0.045  0.035  0.027  0.017  0.009 -0.029 -0.062 -0.072 -0.068 -0.073 -0.076 -0.074  0.022  0.292  0.343  0.122 -0.001 -0.057 -0.062 -0.043 -0.071 -0.07  -0.067 -0.063 -0.076 -0.053 0.007 -0.032 -0.052 -0.01  -0.002 -0.015 -0.023 -0.011 -0.019 -0.011 0.012  0.062  0.097  0.083  0.155  0.182  0.187  0.183  0.136  0.11 0.072  0.043 -0.021 -0.008 -0.013 -0.034  0.018  0.009 -0.007 -0.024]

x1=x_test(1,:,2);
fs = 100;              % Sampling rate
N = length (x1);       % Signal length
t = [0:N-1]/fs;        % time index
 

figure(1)
subplot(2,1,1)
plot(t,x1)
xlabel('second');ylabel('Volts');title('Input ECG Signal')

x1 = x1 - mean (x1 );    % cancel DC conponents
x1 = x1/ max( abs(x1 )); % normalize to one
subplot(2,1,2)
plot(t,x1)
xlabel('second');ylabel('Volts');title(' ECG Signal after cancellation DC drift and normalization')
%plot(t(200:600),x1(200:600))
%xlabel('second');ylabel('Volts');title('Input ECG Signal 1-3 second')
%xlim([1 3])

% filter

% Make impulse response
h = [-1 -2 0 2 1]/8;
% Apply filter
x4 = conv (x1 ,h);
x4 = x4 (2+[1: N]);
x4 = x4/ max( abs(x4 ));


%plot([0:length(x2)-1]/fs,x2)
%xlabel('second');ylabel('Volts');title(' ECG Signal after LPF')
%xlim([0 max(t)])

x5 = x4 .^2;
x5 = x5/ max( abs(x5 ));

figure(2)
subplot(2,1,1)
plot([0:length(x4)-1]/fs,x4)
xlabel('second');ylabel('Volts');title(' ECG Signal after Derivative')
subplot(2,1,2)
plot([0:length(x5)-1]/fs,x5)
xlabel('second');ylabel('Volts');title(' ECG Signal Squarting')

% Make impulse response
h = ones (1 ,31)/31;
Delay = 15; % Delay in samples
 
% Apply filter
x6 = conv (x5 ,h);
x6 = x6 (15+[1: N]);
x6 = x6/ max( abs(x6 ));

figure(3)
plot([0:length(x6)-1]/fs,x6)
xlabel('second');ylabel('Volts');title(' ECG Signal after Averaging')


max_h = max(x6);
thresh = mean (x6 );
poss_reg =(x6>thresh*max_h);
%plot([0:length(x6)-1]/fs,x6)



left = find(diff(poss_reg)==1);
right = find(diff(poss_reg)==-1);
 
%left=left-(6+16);  % cancle delay because of LP and HP
%right=right-(6+16);% cancle delay because of LP and HP
 
for i=1:length(left)
    [R_value(i) R_loc(i)] = max( x1(left(i):right(i)) );
    R_loc(i) = R_loc(i)-1+left(i); % add offset
 
    [Q_value(i) Q_loc(i)] = min( x1(left(i):R_loc(i)) );
    Q_loc(i) = Q_loc(i)-1+left(i); % add offset
 
    [S_value(i) S_loc(i)] = min( x1(left(i):right(i)) );
    S_loc(i) = S_loc(i)-1+left(i); % add offset
 
end
 
% there is no selective wave
Q_loc=Q_loc(find(Q_loc~=0));
R_loc=R_loc(find(R_loc~=0));
S_loc=S_loc(find(S_loc~=0));


figure(4)
title('ECG Signal with R points');
plot (t,x1/max(x1) , t(R_loc) ,R_value , 'r^', t(S_loc) ,S_value, '*',t(Q_loc) , Q_value, 'o');
legend('ECG','R','S','Q');


RN=mean(diff(R_loc));
Rt = RN*max(t)/N;  
rate=60/Rt
