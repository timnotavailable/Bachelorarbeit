function result = isbeaten(acc_hori,acc_y,gyro_hori)
% Beat and shake detection, by comparing Acc horizontal vector

% Threshold: bullying detection
% mean Y-axis: >0.7
% Acc horizontal vector area: >0.269
% Gyro horizontal vector area: >28.8
result = -1;

gravity = 0.99;  % 0.99 in Oulu, Finland
fs = 50; % sample rate
%bias_acc = 0.2; % if the sensor is inclined, this bias is needed

% The following macro should be removed if this file works as a function
peaks = 1; % Threshold: average number of peaks per second
peakvalue = 0.4; %Threshold: only peaks larger than this will be counted

%fileString1 = 'activities.xlsx';
%[acc_hori_p1,txt1,raw1] = xlsread(fileString1,2,'V2:V551');
[b,a] = butter(2,0.1); 
acc_hori_lpf = filter(b,a,acc_hori);
% [summ ,index ,value,maxinva] = TriFind(A,first,last,thres)
% notice summ should >=2
[endindex,pindex,pvalue,maxinva] = TriFind(acc_hori_lpf,1,length(acc_hori_lpf),peakvalue);
if endindex <= 1 % if there is no more than 1 peak
    result = 0;
    return;
end
%subplot(1,6,1);
%plot(acc_hori_lpf(pindex(1):1:pindex(endindex)));
%[acc_y,txt1,raw1] = xlsread(fileString1,2,'D2:D551');
mean_y = mean(acc_y(pindex(1):1:pindex(endindex)));  % mean value of Y-axis
avg_peaks = endindex*fs/(pindex(endindex)-pindex(1)+1);             % average number of peaks per second       
area_acc_hori = trapz(acc_hori(pindex(1):1:pindex(endindex)))/(pindex(endindex)-pindex(1)+1);
%[gyro_hori,txt1,raw1] = xlsread(fileString1,2,'W2:W551');
area_gyro_hori = trapz(gyro_hori(pindex(1):1:pindex(endindex)))/(pindex(endindex)-pindex(1)+1);

area_acc_y = 0;
for i=pindex(1):1:pindex(endindex) 
    area_acc_y = area_acc_y + abs(abs(acc_y(i))-gravity);
end
area_acc_y = area_acc_y/(pindex(endindex)-pindex(1)+1);

if abs(mean_y) >= 0.7 && area_acc_hori >= 0.269 && area_gyro_hori >= 26.7 && area_acc_y<=0.192
    result = 1;
else
    result = 0;
end

end

