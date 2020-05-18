%% Load data
f_s = 100; %samples/sec
load ('data.mat')
%% Preprocess
b = fir1(12,0.7,'low');
test = [];

for j = 1:size(data,1)
    ECG = data(j,:);
    med_pro = normalize(medfilt1(ECG),'range');
    firloww= filter(b,1,med_pro);
    
    %     figure
    %     subplot(2,1,1)
    %     plot(ECG)
    %     subplot(2,1,2)
    %     plot(normalize(med_pro,'range'))
    %     hold on
    %     plot(normalize(preprocessed1,'range'))
    %     b = fir1(12,0.7,'low');
    %     firloww= filter(b,1,med_pro);
    %     plot(normalize(firloww,'range'))
    %     legend('Median','Low-pass','New_low-pass')
    
    %     [q1,q1i] = pan_tompkin(ECG,100,1);
    [q2,q2i] = pan_tompkin(firloww,100,0);
    
    firnorm = normalize(firloww,'range');
    
    if j == 1
    nindex = round(mean(diff(q2i))/2);
    end
    
    nindexlist = diff(q2i);
    for i= 1:length(q2)
        if i>=2 && i<length(q2)-1
%             subplot(4,3,i-1)
%             plot(firnorm(q2i(i)-nindex:q2i(i)+nindex))
            try
                test = [test;firnorm(q2i(i)-nindex:q2i(i)+nindex),nindexlist(i-1)/f_s,nindexlist(i)/f_s,mean(nindexlist)/f_s];
            catch error
            end
        end
    end
    
end
%%
figure
for i= 1:25
    subplot(5,5,i)
    rr=randi(length(test));
    plot(test(rr,:))
    grid on
    grid minor
end