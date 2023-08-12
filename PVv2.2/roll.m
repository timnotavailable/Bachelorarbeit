% extract features from rolling
% thres:0.25  results:  0
% filter setup
[b,a] = butter(2,0.1);

% 20140129 data, Grade Six girls
filestring='dogLogRaw_2014-01-29_14-15-17.xlsx'
sheet=13;

beginindex=2;
endindex=351;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% accyf = filter(b,a,accy);
% polarrf = filter(b,a,polarr);
% polarthf = filter(b,a,polarth);
% getfeaforpush(polarr,polarth,accy,gyrox,gyroz)
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz)
% res=pvdetect(filestring,sheet,beginindex,endindex)

% subplot(3,1,1);
% plot(accyf);
% subplot(3,1,2);
% plot(polarrf);
% subplot(3,1,3);
% plot(polarthf);
