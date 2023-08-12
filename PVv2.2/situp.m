function situp(features,savematfile)
% extract features from sitting ups
% % thres:0.25  results: 0 0 0 0
% filter setup
% [b,a] = butter(2,0.1);

% 20140129 data, Grade Six girls
filestring='dogLogRaw_2014-01-29_14-15-17.xlsx'
sheet=12;
beginindex=2;
endindex=1000;

% accyf = filter(b,a,accy);
% polarrf = filter(b,a,polarr);
% polarthf = filter(b,a,polarth);
% getfeaforpush(polarr,polarth,accy,gyrox,gyroz)

% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz)
% situpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% save situpdata.mat situpdata;
situpres=pvdetect(filestring,sheet,beginindex,endindex,features);
filename=sprintf('%s.mat',savematfile);
save(filename,'situpres');
disp('-----------------------------');
