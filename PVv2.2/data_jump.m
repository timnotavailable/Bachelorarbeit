% function jump(features,savematfile)
% extract features from jumping
% thres:0.25  results: 1 0 0 
% filter setup
% [b,a] = butter(2,0.1);
% features=1;

% 20140129 data, Grade Two boys
invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx';  % #1
sheet=5;
beginindex=2;
endindex=252;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
jumpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% jumpres=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
disp('-----------------------------');

filestring='dogLogRaw_2014-01-29_14-15-17.xlsx';  % #3
sheet=10;
beginindex=556;
endindex=905;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
jumpdata=[jumpdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% jumpres=[jumpres tmp];
disp('-----------------------------');


invA=[0.3804   -0.0294    0.9244;0.1932    0.9800   -0.0484;-0.9044    0.1970    0.3784];
filestring='dogLogRaw_2014-04-25_09-58-52-No3-0339.xlsx';  % #5
sheet=4;
beginindex=2;
endindex=551;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
jumpdata=[jumpdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% jumpres=[jumpres tmp];
disp('-----------------------------');

invA=[0.3804   -0.0294    0.9244;0.1932    0.9800   -0.0484;-0.9044    0.1970    0.3784];
filestring='dogLogRaw_2014-04-25_09-58-52-No3-0339.xlsx';  % #7
sheet=4;
beginindex=2004;
endindex=2354;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
jumpdata=[jumpdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% jumpres=[jumpres tmp];
disp('-----------------------------');


filestring='dogLogRaw_2014-04-25_09-55-21-No4-0009.xlsx';  % #9
sheet=6;
beginindex=2;
endindex=2251;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
jumpdata=[jumpdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% jumpres=[jumpres tmp];
disp('-----------------------------');


filestring='dogLogRaw_2014-04-25_09-55-21-No4-0009.xlsx';  % #11
sheet=6;
beginindex=3204;
endindex=3603;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
jumpdata=[jumpdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% jumpres=[jumpres tmp];
disp('-----------------------------');

pause(10)

filestring='dogLogRaw_2014-04-25_09-55-21-No4-0009.xlsx';  % #10
sheet=6;
beginindex=2253;
endindex=3202;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
jumpdata=[jumpdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% jumpres=[jumpres tmp];
disp('-----------------------------');

invA=[0.3804   -0.0294    0.9244;0.1932    0.9800   -0.0484;-0.9044    0.1970    0.3784];
filestring='dogLogRaw_2014-04-25_09-58-52-No3-0339.xlsx';  % #8
sheet=4;
beginindex=2356;
endindex=2655;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
jumpdata=[jumpdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% jumpres=[jumpres tmp];
disp('-----------------------------');

invA=[0.3804   -0.0294    0.9244;0.1932    0.9800   -0.0484;-0.9044    0.1970    0.3784];
filestring='dogLogRaw_2014-04-25_09-58-52-No3-0339.xlsx';  % #6
sheet=4;
beginindex=553;
endindex=2002;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
jumpdata=[jumpdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% jumpres=[jumpres tmp];
disp('-----------------------------');

invA=[0.9605   -0.0072    0.2780;0.1061    0.9335   -0.3425;-0.2571    0.3585    0.8975];
filestring='dogLogRaw_2014-04-25_09-55-45-No5-0034.xlsx';  % #4
sheet=6;
beginindex=2;
endindex=902;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
jumpdata=[jumpdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% jumpres=[jumpres tmp];
disp('-----------------------------');

% 20140129 data, Grade Six girls
filestring='dogLogRaw_2014-01-29_14-15-17.xlsx';  % #2
sheet=10;
beginindex=2;
endindex=252;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
jumpdata=[jumpdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% jumpres=[jumpres tmp];
disp('-----------------------------');

save jumpdata.mat jumpdata;
% filename=sprintf('%s.mat',savematfile);
% save(filename,'jumpres');
