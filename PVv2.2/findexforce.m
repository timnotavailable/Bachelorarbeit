function [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro] = findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz)
% function [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y] = findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz)
% find extern force by polarr,polarth,accy,gyrox,gyroy,gyroz

% ����push down��fall down����㷨����push��shoulder hit��⣺
% �����ҳ�������polarr��ֵ��Ȼ��Ƚϴ�ʱ��polarth�ʹ�ǰһ��ʱ����ƽ��polarth�Ĳ�ֵ��
% ���ж��Ƿ��������˶����ܵ�������������������á�ע�⣺�ڱȽϡ���ǰһ��ʱ����ƽ��polarth����ʱ��
% �����polarr/SumPolarr��Ȩ�أ�����ƽ��polarth=��polarr/SumPolarr*polarth����Ӧע���һ�����⣬
% ��Ѽ�Ȩ���polarth����ɽӽ���0������Ӧ�Ц�polarr/SumPolarr=1���ܵ�shoulder hitʱ��
% gyro���ܻ��нϴ�仯�������ڷ�ֵ������gyro��max����֡�
% �����ֵ���˶�������ͻ�䣬�۲�ͻ��Ƕȣ���ֵ��С��Gyroͳ�����ԣ��������û��ͻ�䣬�۲�˺�(ˮƽ)Acc��Gyroͳ������(��ֵ������)��
% һ���˲��᳤ʱ���ط������������˶��������˶����⣬����ܣ������ܣ���������ͨ����Ҫ��ж���ֻ��Ա��������˺���
exflag = 1; % For bullying training and testing, exflag=1; for daily-life training, exflag=0?
gravity = 1; % local gravity
peakthreshold = 0.5;  % only peaks larger than shis threshold will be calculated
before_start = 55;  % for polarth mean calculation
before_end = 5;
before_peak = 5;  % for gyro max or sum calculation
after_peak = 5;
after_start = 5;  % for acc or gyro statistic calculation
after_end = 55;
accy_before_peak = 50;
accy_after_peak = accy_before_peak;
winlen = 400; % fs = 50Hz, window = 8s
peak_polarr(1) = 0;
delta_polarth(1) = 0;
mean_peak_gyro(1) = 0;
area_acc_y(1) = 0;
mean_afterpeak_polarr(1)=0;
var_afterpeak_polarr(1)=0;
mean_afterpeak_gyro(1)=0;
var_afterpeak_gyro(1)=0;
n=0; % count how many groups of features are extracted
% disp('================================================================');
for i = 1:winlen/2:length(polarth) % split long data into 8s windows
    if (i+winlen-1) <= length(polarth)
        polarth_tmp=polarth(i:i+winlen-1); % they all have same length
        polarr_tmp=polarr(i:i+winlen-1);
        accy_tmp=accy(i:i+winlen-1);
        gyrox_tmp=gyrox(i:i+winlen-1);
        gyroy_tmp=gyroy(i:i+winlen-1);
        gyroz_tmp=gyroz(i:i+winlen-1);
        [psum,pindex,pvalue,maxpeak_polarr]=TriFind(polarr_tmp,peakthreshold);
        if psum >0
            for j=1:1:psum
                if (pindex(j)-before_start<1) || (pindex(j)+after_end>length(polarr_tmp))
%                     disp('Not enough data');
%                     disp('----------------------------------------------------------');
                    continue;
                end;
                n=n+1;
                peak_polarr(n) = pvalue(j);
                polarrpeak_polarth = polarth_tmp(pindex(j));
                polarth_before = zeros(1,(before_start-before_end+1));
                for k=1:1:(before_start-before_end+1)
                    polarth_before(k)=polarth_tmp(pindex(j)-before_start+k-1)*polarr_tmp(pindex(j)-before_start+k-1)/sum(polarr_tmp((pindex(j)-before_start):(pindex(j)-before_end)));
                end;                
                delta_polarth(n) = abs(sum(polarth_before)-polarrpeak_polarth);
                if delta_polarth(n)>180
                    delta_polarth(n) = 360-delta_polarth(n);
                else
                    delta_polarth(n) = delta_polarth(n);
                end;
                gyro = (gyrox_tmp.^2+gyroy_tmp.^2+gyroz_tmp.^2).^0.5;
                mean_peak_gyro(n) = mean(gyro((pindex(j)-before_peak):(pindex(j)+after_peak)));
                area_acc_y(n) = 0;
                for l=pindex(j)-accy_before_peak:pindex(j)+accy_after_peak
                    area_acc_y(n) = area_acc_y(n) + abs(accy(l)-gravity);
                end;
                mean_afterpeak_polarr(n) = mean(polarr_tmp((pindex(j)+after_start):(pindex(j)+after_end)));
                var_afterpeak_polarr(n) = var(polarr_tmp((pindex(j)+after_start):(pindex(j)+after_end)));
                mean_afterpeak_gyro(n) = mean(gyro((pindex(j)+after_start):(pindex(j)+after_end)));
                var_afterpeak_gyro(n) = var(gyro((pindex(j)+after_start):(pindex(j)+after_end)));
%                 disp('----------------------------------------------------------');
            end;
        end;
    else
        polarth_tmp=polarth(i:length(polarth));
        polarr_tmp=polarr(i:length(polarr));
        accy_tmp=accy(i:length(accy));
        gyrox_tmp=gyrox(i:length(gyrox));
        gyroy_tmp=gyroy(i:length(gyroy));
        gyroz_tmp=gyroz(i:length(gyroz));
        [psum,pindex,pvalue,maxpeak_polarr]=TriFind(polarr_tmp,peakthreshold);
        if psum >0
            for j=1:1:psum
                if (pindex(j)-before_start<1) || (pindex(j)+after_end>length(polarr_tmp))
%                     disp('Not enough data');
%                     disp('----------------------------------------------------------');
                    continue;
                end;
                n=n+1;
                peak_polarr(n) = pvalue(j);
                polarrpeak_polarth = polarth_tmp(pindex(j));
                polarth_before = zeros(1,(before_start-before_end+1));
                for k=1:1:(before_start-before_end+1)
                    polarth_before(k)=polarth_tmp(pindex(j)-before_start+k-1)*polarr_tmp(pindex(j)-before_start+k-1)/sum(polarr_tmp((pindex(j)-before_start):(pindex(j)-before_end)));
                end;
                delta_polarth(n) = abs(sum(polarth_before)-polarrpeak_polarth);
                if delta_polarth(n)>180
                    delta_polarth(n) = 360-delta_polarth(n);
                else
                    delta_polarth(n) = delta_polarth(n);
                end;
                gyro = (gyrox_tmp.^2+gyroy_tmp.^2+gyroz_tmp.^2).^0.5;
                mean_peak_gyro(n) = mean(gyro((pindex(j)-before_peak):(pindex(j)+after_peak)));
                area_acc_y(n) = 0;
                for l=pindex(j)-accy_before_peak:pindex(j)+accy_after_peak
                    area_acc_y(n) = area_acc_y(n) + abs(accy(l)-gravity);
                end;
                mean_afterpeak_polarr(n) = mean(polarr_tmp((pindex(j)+after_start):(pindex(j)+after_end)));
                var_afterpeak_polarr(n) = var(polarr_tmp((pindex(j)+after_start):(pindex(j)+after_end)));
                mean_afterpeak_gyro(n) = mean(gyro((pindex(j)+after_start):(pindex(j)+after_end)));
                var_afterpeak_gyro(n) = var(gyro((pindex(j)+after_start):(pindex(j)+after_end)));
%                 disp('----------------------------------------------------------');
            end;
        end;
    end;
end;
% peak_polarr
% delta_polarth
% mean_peak_gyro
% area_acc_y
% disp('----------------------------------');

% discard the samples whose peak_polarr and delta_polarth are both smaller than others'
% This should be used when:1.training - extracting features from bullying activities in
% order to exclude the daily-life activity features among them;2.testing - 
% all samples.
% This should not be used when:1.training - extracting features from
% daily-life activities.
if exflag
i=1;
while i<=n
    reduceflag=0;
    j=1;
    while j<=n 
        if peak_polarr(i)<=peak_polarr(j) && delta_polarth(i)<=delta_polarth(j) && j~=i
            if i==n
                peak_polarr=peak_polarr(1:length(peak_polarr)-1);
                delta_polarth=delta_polarth(1:length(delta_polarth)-1);
                mean_peak_gyro=mean_peak_gyro(1:length(mean_peak_gyro)-1);
                area_acc_y=area_acc_y(1:length(area_acc_y)-1);
                mean_afterpeak_polarr=mean_afterpeak_polarr(1:length(mean_afterpeak_polarr)-1);
                var_afterpeak_polarr=var_afterpeak_polarr(1:length(var_afterpeak_polarr)-1);
                mean_afterpeak_gyro=mean_afterpeak_gyro(1:length(mean_afterpeak_gyro)-1);
                var_afterpeak_gyro=var_afterpeak_gyro(1:length(var_afterpeak_gyro)-1);
%                 disp('last loop reduce');
                return;
            else
                k=i;
                while k<=n-1
                    peak_polarr(k)=peak_polarr(k+1);
                    delta_polarth(k)=delta_polarth(k+1);
                    mean_peak_gyro(k)=mean_peak_gyro(k+1);
                    area_acc_y(k)=area_acc_y(k+1);
                    mean_afterpeak_polarr(k)=mean_afterpeak_polarr(k+1);
                    var_afterpeak_polarr(k)=var_afterpeak_polarr(k+1);
                    mean_afterpeak_gyro(k)=mean_afterpeak_gyro(k+1);
                    var_afterpeak_gyro(k)=var_afterpeak_gyro(k+1);
                    k=k+1;
                end;
                peak_polarr=peak_polarr(1:length(peak_polarr)-1);
                delta_polarth=delta_polarth(1:length(delta_polarth)-1);
                mean_peak_gyro=mean_peak_gyro(1:length(mean_peak_gyro)-1);
                area_acc_y=area_acc_y(1:length(area_acc_y)-1);
                mean_afterpeak_polarr=mean_afterpeak_polarr(1:length(mean_afterpeak_polarr)-1);
                var_afterpeak_polarr=var_afterpeak_polarr(1:length(var_afterpeak_polarr)-1);
                mean_afterpeak_gyro=mean_afterpeak_gyro(1:length(mean_afterpeak_gyro)-1);
                var_afterpeak_gyro=var_afterpeak_gyro(1:length(var_afterpeak_gyro)-1);
            end;
            n=n-1;
            reduceflag=1;
        end;
        j=j+1;
    end;
    if reduceflag==0
        i=i+1;
    end;
end;
end;
% disp('---------------------------------');
% peak_polarr;
% delta_polarth;
% mean_peak_gyro;
