function [result,fall] = ispushed(acc_hori,acc_y,gyro_hori)
% I first detect a "down",then "push" or "fall"

result = -1;

gravity = 0.99;  % 0.99 in Oulu Finland

halfwidth = 20; % fs = 50Hz, width = halfwidth/50 (s)
before_start = 65;  % where to start before the highest peak
before_end = 45;
after_start = 30;  % where to start after the highest peak
after_end = 50;
peakthres = 1.8; % some fall down has a max acc peak lower than 1.8, ignore
befthres = 0.8;
aftthres = 0.6;
Maxpeakth_gyro = 235; % max peak of gyro, threshold to detect a pushdown
Areath_gyro = 3600; % area of gyro, threshold to detect a pushdown
% 20 data before the highest peak, and 10 data after the highest peak, calculate the area
fall=0;
%fileString1 = 'falldown.xlsx';
%[acc_hori_w1,txt1,raw1] = xlsread(fileString1,2,'V2:V191');
[b,a] = butter(2,0.1);  %transfer coefficients a and b. N=2 shows the best curve.
acc_hori_flt = filter(b,a,acc_hori);
[sum,index_,value_,maxinva_flt]=TriFind(acc_hori_flt,1,length(acc_hori_flt),0); 
%plot(acc_hori_w1_flt);
% first detect a "down" with acc
maxinva_flt(2);     % value of the highest peak
%[acc_y,txt1,raw1] = xlsread(fileString1,2,'D2:D191'); 
if (maxinva_flt(1)-before_start) < 1 || (maxinva_flt(1)+after_end) > length(acc_y)
    result = -1;
    return
end
mean_bef_down = mean(acc_y((maxinva_flt(1)-before_start):1:(maxinva_flt(1)-before_end)));
mean_aft_down = mean(acc_y((maxinva_flt(1)+after_start):1:(maxinva_flt(1)+after_end)));
% second detect "push" or "fall" with gyro
%[gyro_hori,txt1,raw1] = xlsread(fileString1,2,'W2:W191');
[sum,index_,value_,maxinva_gyro_hori]=TriFind(gyro_hori,1,length(gyro_hori),0);
maxinva_gyro_hori(2);
if (maxinva_gyro_hori(1)-halfwidth) < 1 || (maxinva_gyro_hori(1)+halfwidth/2) > length(gyro_hori)
    result = -1;
    return
end
area_gyro_hori = trapz(gyro_hori((maxinva_gyro_hori(1)-halfwidth):1:(maxinva_gyro_hori(1)+halfwidth/2)));
[sum,index_,value_,maxinva_acc_hori]=TriFind(acc_hori,1,length(acc_hori),0); % find highest peak in acc raw data
%max_acc = maxinva_acc_hori(2)
%mean_bef_down = mean_bef_down
%mean_aft_down =mean_aft_down
area_gyro_hori = area_gyro_hori;
max_gyro = maxinva_gyro_hori(2);

if maxinva_acc_hori(2)>=peakthres && abs(mean_bef_down) >= befthres && aftthres >= abs(mean_aft_down) 
    fall = 1;
else
    fall = 0;
end

if maxinva_acc_hori(2)>=peakthres && abs(mean_bef_down) >= befthres && aftthres >= abs(mean_aft_down) && area_gyro_hori >= Areath_gyro &&  maxinva_gyro_hori(2) >= Maxpeakth_gyro
    result = 1;
else
    result = 0;
end

end

