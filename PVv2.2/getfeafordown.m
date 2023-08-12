function [max_polarr,max_gyro,area_gyro,mean_bef_down,mean_aft_down]=getfeafordown(polarr,accy,gyrox,gyroy,gyroz)
% fucntion
% get features from acc and gyro for pushing down and falling down
before_start = 55;  % where to start before the highest peak
before_end = 5; % the period should be larger than a foot lift or foot drop
after_start = 5;  % where to start after the highest peak
after_end = 15; % the period should not be too long,the user may get up quickly
halfwidth = 10; % fs = 50Hz, width = halfwidth/50 (s)
highpeak = 1.7; %find out all peaks polarr>=highpeak
% split the data into 8-second sections
% fs = 50; % sample rate
% winlen=8; %window length
% for i=1:winlen*fs/2:length(polarr) % window slides 4s each time
%     if (i+winlen*fs-1) <= length(polarr)
%         % todo
%     else
%         % todo
%     end;
% end;
% [b,a] = butter(2,0.1);  %transfer coefficients a and b. N=2 shows the best curve.
% accyf = filter(b,a,accy);
% polarrf = filter(b,a,polarr);  % we should decide whether to use filtered polarr
disp('===============================================================');
[peaksum,allindex,allvalue,maxinva_plrr]=TriFind(polarr,highpeak); % find all high peaks
if peaksum==0
    disp('No peak found');
    max_polarr=0
    max_gyro=0
    area_gyro=0
    mean_bef_down=0
    mean_aft_down=0
    disp('----------------------------------------------------------');
    return;
end;
for pi=1:1:peaksum
    maxinva_polarr(1)=allindex(pi);
    maxinva_polarr(2)=allvalue(pi);
    %[sum,index_,value_,maxinva_polarr]=TriFind(polarr);% the moment when one falls on the ground
    if (maxinva_polarr(1)-before_start) < 1 || (maxinva_polarr(1)+after_end) > length(accy)
        disp('Not enough data');
        max_polarr=0
        max_gyro=0
        area_gyro=0
        mean_bef_down=0
        mean_aft_down=0
        disp('----------------------------------------------------------');
        continue;
    end;
    gyro = (gyrox.^2+gyroy.^2+gyroz.^2).^0.5;
    if (maxinva_polarr(1)-halfwidth) < 1 || (maxinva_polarr(1)+halfwidth) > length(gyro)
        disp('Not enough data');
        max_polarr=0
        max_gyro=0
        area_gyro=0
        mean_bef_down=0
        mean_aft_down=0
        disp('----------------------------------------------------------');
        continue;
    end;
    max_polarr = maxinva_polarr(2)
    mean_bef_down = mean(accy((maxinva_polarr(1)-before_start):1:(maxinva_polarr(1)-before_end)))
    mean_aft_down = mean(accy((maxinva_polarr(1)+after_start):1:(maxinva_polarr(1)+after_end)))
    area_gyro = trapz(gyro((maxinva_polarr(1)-halfwidth):1:(maxinva_polarr(1)+halfwidth)))
    [sum,ind,val,maxgyro] = TriFind(gyro((maxinva_polarr(1)-halfwidth):1:(maxinva_polarr(1)+halfwidth)));
    if sum == 0
        max_gyro = max(gyro((maxinva_polarr(1)-halfwidth):1:(maxinva_polarr(1)+halfwidth)))
    else
        max_gyro = maxgyro(2)
    end;
    disp('----------------------------------------------------------');
end;