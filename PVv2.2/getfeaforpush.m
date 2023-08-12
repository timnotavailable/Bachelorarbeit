function getfeaforpush(polarr,polarth,accy,gyrox,gyroz)
% function
% get features for pushing and shaking

% first split the data into 8-second sections
winlen = 400; % fs = 50Hz, window = 8s
thwidth = 25;
peakthreshold = 0.3;
% peakthreshold_th = 20;
gravity = 1;
mean_y =0;
area_polarr=0;
area_gyro_hori =0;
area_accy =0;
polarth_var =0;
polarr_var =0;
maxpeak_dpolarth=0;
maxpeak_polarr=0;
dpolarth_mean = 0;
dpolarth_var = 0;
% i = 1:length(polarth);
disp('================================================================');
for i = 1:winlen/2:length(polarth)
    if (i+winlen-1) <= length(polarth)
        % extract features
        polarth_tmp=polarth(i:i+winlen-1); % they all have same length
        polarr_tmp=polarr(i:i+winlen-1);
        accy_tmp=accy(i:i+winlen-1);
        gyrox_tmp=gyrox(i:i+winlen-1);
        gyroz_tmp=gyroz(i:i+winlen-1);
        % find out the first and last peaks in polarr
        [sum,pindex,pvalue,maxinva_polarr]=TriFind(polarr_tmp,peakthreshold);
        if sum>=2
            mean_y = mean(accy_tmp(pindex(1):1:pindex(sum)))
            area_polarr = trapz(polarr_tmp(pindex(1):1:pindex(sum)))/(pindex(sum)-pindex(1)+1)
            gyro_hori=(gyrox_tmp.^2+gyroz_tmp.^2).^0.5;
            area_gyro_hori = trapz(gyro_hori(pindex(1):1:pindex(sum)))/(pindex(sum)-pindex(1)+1)
            area_accy = 0;
            for j=pindex(1):1:pindex(sum) 
                area_accy = area_accy + abs(abs(accy_tmp(j))-gravity);
            end;
            area_accy = area_accy/(pindex(sum)-pindex(1)+1)
            %polarth_var = var(polarth_tmp(pindex(1):pindex(sum))) % this may not be necessary
            polarr_var = var(polarr_tmp(pindex(1):pindex(sum)))
        end;
        dpolarth=zeros(size(polarth_tmp));  % detect sudden of theta and r
        for j=1:length(polarth_tmp)-1
            dpolarth(j)=abs(polarth_tmp(j+1)-polarth_tmp(j)); % we only care about the angle between last action and this
            if dpolarth(j)>180           %it should not be larger than 180 degree
                dpolarth(j)= 360-dpolarth(j);
            end;
        end;
        dpolarth(length(polarth_tmp))=dpolarth(length(polarth_tmp)-1); 
        if sum>=2
            dpolarth_mean = mean(dpolarth(pindex(1):pindex(sum)))
            dpolarth_var = var(dpolarth(pindex(1):pindex(sum)))
        end;
        [sum,pindex,pvalue,maxinva_dpolarth]=TriFind(abs(dpolarth)); % find max polarr when dpolarth max
        leftend = max(maxinva_dpolarth(1)-25,1);
        rightend = min(maxinva_dpolarth(1)+25,length(polarr_tmp));
        [sum,pindex,pvalue,maxinva_polarr]=TriFind(polarr_tmp(leftend:rightend));
        maxpeak_dpolarth=maxinva_dpolarth(2)
        if sum==0
            maxpeak_polarr=max(polarr_tmp(leftend:rightend))
        else
            maxpeak_polarr=maxinva_polarr(2)  
        end;    
        [sum,pindex,pvalue,maxinva_polarr]=TriFind(polarr_tmp); % find max dpolarth when polarr max
        leftend = max(maxinva_polarr(1)-25,1);
        rightend = min(maxinva_polarr(1)+25,length(polarr_tmp));
        [sum,pindex,pvalue,maxinva_dpolarth]=TriFind(abs(dpolarth(leftend:rightend)));
        maxpeak_polarr=maxinva_polarr(2)
        if sum==0
            maxpeak_dpolarth=max(abs(dpolarth(leftend:rightend)))
        else
            maxpeak_dpolarth=maxinva_dpolarth(2)
        end;
        disp('----------------------------------------------------------');
    else
        % todo: extract features
        polarth_tmp=polarth(i:length(polarth));
        polarr_tmp=polarr(i:length(polarr));
        accy_tmp=accy(i:length(accy));
        gyrox_tmp=gyrox(i:length(gyrox));
        gyroz_tmp=gyroz(i:length(gyroz));
        % find out the first and last peaks in polarr
        [sum,pindex,pvalue,maxinva_polarr]=TriFind(polarr_tmp,peakthreshold);
        if sum>=2
            mean_y = mean(accy_tmp(pindex(1):1:pindex(sum)))
            area_polarr = trapz(polarr_tmp(pindex(1):1:pindex(sum)))/(pindex(sum)-pindex(1)+1)
            gyro_hori=(gyrox_tmp.^2+gyroz_tmp.^2).^0.5;
            area_gyro_hori = trapz(gyro_hori(pindex(1):1:pindex(sum)))/(pindex(sum)-pindex(1)+1)
            area_accy = 0;
            for j=pindex(1):1:pindex(sum) 
                area_accy = area_accy + abs(abs(accy_tmp(j))-gravity);
            end;
            area_accy = area_accy/(pindex(sum)-pindex(1)+1)
            %polarth_var = var(polarth_tmp(pindex(1):pindex(sum)))
            polarr_var = var(polarr_tmp(pindex(1):pindex(sum)))
        end;
        dpolarth=zeros(size(polarth_tmp));
        for j=1:length(polarth_tmp)-1
            dpolarth(j)=abs(polarth_tmp(j+1)-polarth_tmp(j)); % we only care about the angle between last action and this
            if dpolarth(j)>180           %it should not be larger than 180 degree
                dpolarth(j)= 360-dpolarth(j);
            end;
        end;
        dpolarth(length(polarth_tmp))=dpolarth(length(polarth_tmp)-1); 
        if sum>=2
            dpolarth_mean = mean(dpolarth(pindex(1):pindex(sum)))
            dpolarth_var = var(dpolarth(pindex(1):pindex(sum)))
        end;
        [sum,pindex,pvalue,maxinva_dpolarth]=TriFind(abs(dpolarth));% find max polarr when dpolarth max
        leftend = max(maxinva_dpolarth(1)-25,1);
        rightend = min(maxinva_dpolarth(1)+25,length(polarr_tmp));
        [sum,pindex,pvalue,maxinva_polarr]=TriFind(polarr_tmp(leftend:rightend));
        maxpeak_dpolarth=maxinva_dpolarth(2)
        if sum==0
            maxpeak_polarr=max(polarr_tmp(leftend:rightend))
        else
            maxpeak_polarr=maxinva_polarr(2)  
        end;
        [sum,pindex,pvalue,maxinva_polarr]=TriFind(polarr_tmp); % find max dpolarth when polarr max
        leftend = max(maxinva_polarr(1)-25,1);
        rightend = min(maxinva_polarr(1)+25,length(polarr_tmp));
        [sum,pindex,pvalue,maxinva_dpolarth]=TriFind(abs(dpolarth(leftend:rightend)));
        maxpeak_polarr=maxinva_polarr(2)
        if sum==0
            maxpeak_dpolarth=max(abs(dpolarth(leftend:rightend)))
        else
            maxpeak_dpolarth=maxinva_dpolarth(2)
        end;
        % disp('end of data');
        disp('----------------------------------------------------------');
        return;
    end;
end;
