function shake(features,savematfile)
% extract features from shaking
% thres:0.25  results: 1     1 | 1     1 | 0 
% filter setup
% [b,a] = butter(2,0.1);
zs=zeros(8,1)-1;
% 20140128 data, Grade Six boys
filestring='dogLogRaw_2014-01-28_11-09-00.xlsx'  % #1
sheet=7;
beginindex=2;
endindex=484;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% shakedata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
shakeres=pvdetect(filestring,sheet,beginindex,endindex,features);
disp('-----------------------------');

% 20140129 data, Grade Six girls
filestring='dogLogRaw_2014-01-29_14-15-17.xlsx'  % #3
sheet=9;
beginindex=2;
endindex=201;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shakedata=[shakedata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
shakeres=[shakeres -1 tmp];
disp('-----------------------------');

invA=[0.0255    0.0877    0.9958; 0.1680    0.9816   -0.0908; -0.9854    0.1697    0.0103];
filestring='dogLogRaw_2014-04-25_12-36-21-No4-2315.xlsx';  % #5
sheet=6;   % beat
beginindex=2;
endindex=318;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shakedata=[shakedata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
shakeres=[shakeres -1 tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-04-25_13-21-46-No4-6811.xlsx';  % #7
sheet=7;
beginindex=2;
endindex=424;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shakedata=[shakedata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
shakeres=[shakeres -1 tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-04-25_12-33-43-No3-2038.xlsx';  % #9
sheet=8;
beginindex=2;
endindex=411;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shakedata=[shakedata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
shakeres=[shakeres -1 tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-04-25_12-33-43-No3-2038.xlsx';  % #11
sheet=8;
beginindex=413;
endindex=788;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shakedata=[shakedata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
shakeres=[shakeres -1 tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-04-25_12-44-13-No5-3103.xlsx';  % #13
sheet=5;  % beat
beginindex=372;
endindex=738;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shakedata=[shakedata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
shakeres=[shakeres -1 tmp];
disp('-----------------------------');

pause(10)

filestring='dogLogRaw_2014-04-25_12-44-13-No5-3103.xlsx';  % #12
sheet=5;  % beat
beginindex=2;
endindex=370;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shakedata=[shakedata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
shakeres=[shakeres -1 tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-04-25_12-33-43-No3-2038.xlsx';  % #10
sheet=7;  % beat
beginindex=2;
endindex=334;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shakedata=[shakedata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
shakeres=[shakeres -1 tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-04-25_13-21-59-No5-6824.xlsx';  % #8
sheet=7;
beginindex=2;
endindex=445;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shakedata=[shakedata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
shakeres=[shakeres -1 tmp];
disp('-----------------------------');

invA=[0.0660    0.1848    0.9806;0.1125    0.9751   -0.1913;-0.9915    0.1229    0.0436];
filestring='dogLogRaw_2014-04-25_13-21-34-No3-6759.xlsx';  % #6
sheet=7;
beginindex=2;
endindex=219;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shakedata=[shakedata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
shakeres=[shakeres -1 tmp];
disp('-----------------------------');

invA=[0.0255    0.0877    0.9958; 0.1680    0.9816   -0.0908; -0.9854    0.1697    0.0103];
filestring='dogLogRaw_2014-04-25_12-36-21-No4-2315.xlsx';  % #4
sheet=7;
beginindex=2;
endindex=321;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shakedata=[shakedata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
shakeres=[shakeres -1 tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-01-28_11-09-00.xlsx'  % #2
sheet=7;
beginindex=486;
endindex=893;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shakedata=[shakedata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
shakeres=[shakeres -1 tmp];
disp('-----------------------------');

% save shakedata.mat shakedata;
filename=sprintf('%s.mat',savematfile);
save(filename,'shakeres');
