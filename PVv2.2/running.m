function running(features,savematfile)
% extract features from running
% thres:0.25  results:0 0 0 0 0 0 1 0 
% filter setup
% [b,a] = butter(2,0.1);
% 20140128 data, Grade Six boys
filestring='dogLogRaw_2014-01-28_11-09-00.xlsx'  % #1
sheet=9;
beginindex=2;
endindex=353;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% rundata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
runres=pvdetect(filestring,sheet,beginindex,endindex,features);
disp('-----------------------------');

filestring='dogLogRaw_2014-01-29_14-15-17.xlsx'  % #3
sheet=8;
beginindex=203;
endindex=501;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% rundata=[rundata tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
runres=[runres tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-01-29_14-15-17.xlsx'  % #5
sheet=8;
beginindex=970;
endindex=1429;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% rundata=[rundata tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
runres=[runres tmp];
disp('-----------------------------');

% 20140425 
% filestring='dogLogRaw_2014-04-25_12-36-21-No4-2315.xlsx'; 
invA=[0.0255    0.0877    0.9958; 0.1680    0.9816   -0.0908; -0.9854    0.1697    0.0103];
filestring='dogLogRaw_2014-04-25_12-36-21-No4-2315.xlsx'  % #7
sheet=4;
beginindex=2;
endindex=2099;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% rundata=[rundata tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
runres=[runres tmp];
disp('-----------------------------');

% filestring='dogLogRaw_2014-04-25_09-55-45-No5-0034.xlsx'; 
invA=[0.9605   -0.0072    0.2780;0.1061    0.9335   -0.3425;-0.2571    0.3585    0.8975];
filestring='dogLogRaw_2014-04-25_09-55-45-No5-0034.xlsx'  % #9
sheet=4;
beginindex=2;
endindex=1501;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% rundata=[rundata tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
runres=[runres tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-04-25_13-21-46-No4-6811.xlsx'  % #11
sheet=4;
beginindex=2;
endindex=1896;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% rundata=[rundata tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
runres=[runres tmp];
disp('-----------------------------');

pause(10)

filestring='dogLogRaw_2014-04-25_12-34-19-No5-2114.xlsx'  % #13
sheet=4;
beginindex=2;
endindex=2518;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% rundata=[rundata tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
runres=[runres tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-04-25_12-33-43-No3-2038.xlsx'  % #15
sheet=4;
beginindex=2;
endindex=1952;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% rundata=[rundata tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
runres=[runres tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-04-25_09-55-21-No4-0009.xlsx'  % #17
sheet=3;
beginindex=2;
endindex=1601;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% rundata=[rundata tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
runres=[runres tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-04-25_12-33-43-No3-2038.xlsx'  % #16
sheet=4;
beginindex=1954;
endindex=3603;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% rundata=[rundata tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
runres=[runres tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-04-25_12-34-19-No5-2114.xlsx'  % #14
sheet=4;
beginindex=2520;
endindex=4318;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% rundata=[rundata tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
runres=[runres tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-04-25_13-21-59-No5-6824.xlsx'  % #12
sheet=4;
beginindex=2;
endindex=1906;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% rundata=[rundata tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
runres=[runres tmp];
disp('-----------------------------');

pause(10)

% filestring='dogLogRaw_2014-04-25_13-21-34-No3-6759.xlsx'; 
invA=[0.0660    0.1848    0.9806;0.1125    0.9751   -0.1913;-0.9915    0.1229    0.0436];
filestring='dogLogRaw_2014-04-25_13-21-34-No3-6759.xlsx'  % #10
sheet=4;
beginindex=2;
endindex=1995;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% rundata=[rundata tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
runres=[runres tmp];
disp('-----------------------------');

invA=[0.0255    0.0877    0.9958; 0.1680    0.9816   -0.0908; -0.9854    0.1697    0.0103];
filestring='dogLogRaw_2014-04-25_12-36-21-No4-2315.xlsx'  % #8
sheet=4;
beginindex=2101;
endindex=3803;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% rundata=[rundata tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
runres=[runres tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-01-29_14-15-17.xlsx'  % #6
sheet=8;
beginindex=1431;
endindex=1511;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% rundata=[rundata tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
runres=[runres tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-01-29_14-15-17.xlsx'  % #4
sheet=8;
beginindex=503;
endindex=968;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% rundata=[rundata tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
runres=[runres tmp];
disp('-----------------------------');

% 20140129 data, Grade Six girls
filestring='dogLogRaw_2014-01-29_14-15-17.xlsx'  % #2
sheet=8;
beginindex=2;
endindex=201;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% rundata=[rundata tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
runres=[runres tmp];
disp('-----------------------------');

% save rundata.mat rundata;
filename=sprintf('%s.mat',savematfile);
save(filename,'runres');
