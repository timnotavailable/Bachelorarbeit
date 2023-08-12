% function randomplay(features,savematfile)
% extract features from random playing
% thres:0.25  results:  1     1     0     0     0     0 | 0     0     0
% 0     1 | 0     0     0 | 1     0 | 1     1 | 0     0     0     1 | 0
% 0 | 0     0     0     0
% filter setup 
% [b,a] = butter(2,0.1);

% 20140129 data, Grade Six girls
filestring='dogLogRaw_2014-01-29_14-15-17.xlsx' % #1
sheet=11;
beginindex=2;
endindex=1202;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
playdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% playres=pvdetect(filestring,sheet,beginindex,endindex,features);
disp('-----------------------------');

filestring='dogLogRaw_2014-01-29_14-15-17.xlsx' % #3
sheet=11;
beginindex=2305;
endindex=3077;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
playdata=[playdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% playres=[playres tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-01-29_14-15-17.xlsx' % #5
sheet=11;
beginindex=3631;
endindex=4181;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
playdata=[playdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% playres=[playres tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-01-29_14-15-17.xlsx' % #7
sheet=11;
beginindex=5034;
endindex=5483;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
playdata=[playdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% playres=[playres tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-01-29_14-15-17.xlsx' % #8
sheet=11;
beginindex=5485;
endindex=6483;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
playdata=[playdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% playres=[playres tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-01-29_14-15-17.xlsx' % #6
sheet=11;
beginindex=4183;
endindex=5032;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
playdata=[playdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% playres=[playres tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-01-29_14-15-17.xlsx' % #4
sheet=11;
beginindex=3079;
endindex=3629;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
playdata=[playdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% playres=[playres tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-01-29_14-15-17.xlsx' % #2
sheet=11;
beginindex=1204;
endindex=2303;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
playdata=[playdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% playres=[playres tmp];
disp('-----------------------------');


% pause(10)
% 
% % 20140425
% invA=[0.9605   -0.0072    0.2780;0.1061    0.9335   -0.3425;-0.2571    0.3585    0.8975];
% filestring='dogLogRaw_2014-04-25_09-55-45-No5-0034.xlsx';
% sheet=7;
% beginindex=2;
% endindex=550;
% % [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% % [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% % tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% % playdata=[playdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% playres=[playres tmp];
% disp('-----------------------------');
% 
% beginindex=552;
% endindex=1401;
% % [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% % [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% % tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% % playdata=[playdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% playres=[playres tmp];
% disp('-----------------------------');
% 
% beginindex=1403;
% endindex=1852;
% % [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% % [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% % tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% % playdata=[playdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% playres=[playres tmp];
% disp('-----------------------------');
% 
% beginindex=1854;
% endindex=3053;
% % [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% % [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% % tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% % playdata=[playdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% playres=[playres tmp];
% disp('-----------------------------');
% 
% beginindex=3055;
% endindex=4803;
% % [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% % [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% % tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% % playdata=[playdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% playres=[playres tmp];
% disp('-----------------------------');
% 
% beginindex=4805;
% endindex=5655;
% % [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% % [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% % tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% % playdata=[playdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% playres=[playres tmp];
% disp('-----------------------------');
% 
% beginindex=5657;
% endindex=6305;
% % [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% % [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% % tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% % playdata=[playdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% playres=[playres tmp];
% disp('-----------------------------');
% 
% pause(10)
% 
% invA=[0.3804   -0.0294    0.9244;0.1932    0.9800   -0.0484;-0.9044    0.1970    0.3784];
% filestring='dogLogRaw_2014-04-25_09-58-52-No3-0339.xlsx';
% sheet=5;
% beginindex=2;
% endindex=250;
% % [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% % [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% % tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% % playdata=[playdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% playres=[playres tmp];
% disp('-----------------------------');
% 
% beginindex=252;
% endindex=551;
% % [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% % [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% % tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% % playdata=[playdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% playres=[playres tmp];
% disp('-----------------------------');
% 
% beginindex=553;
% endindex=852;
% % [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% % [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% % tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% % playdata=[playdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% playres=[playres tmp];
% disp('-----------------------------');
% 
% beginindex=854;
% endindex=1453;
% % [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% % [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% % tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% % playdata=[playdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% playres=[playres tmp];
% disp('-----------------------------');
% 
% beginindex=1455;
% endindex=2254;
% % [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% % [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% % tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% % playdata=[playdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% playres=[playres tmp];
% disp('-----------------------------');
% 
% beginindex=2256;
% endindex=2404;
% % [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% % [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% % tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% % playdata=[playdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% playres=[playres tmp];
% disp('-----------------------------');
% 
% beginindex=2406;
% endindex=2605;
% % [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% % [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% % tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% % playdata=[playdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% playres=[playres tmp];
% disp('-----------------------------');
% 
% beginindex=2607;
% endindex=3156;
% % [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% % [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% % tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% % playdata=[playdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% playres=[playres tmp];
% disp('-----------------------------');
% 
% beginindex=3158;
% endindex=3306;
% % [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% % [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% % tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% % playdata=[playdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% playres=[playres tmp];
% disp('-----------------------------');
% 
% beginindex=3308;
% endindex=3507;
% % [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% % [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% % tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% % playdata=[playdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% playres=[playres tmp];
% disp('-----------------------------');
% 
% pause(10)
% 
% filestring='dogLogRaw_2014-04-25_13-06-02-No5-5239.xlsx';
% sheet=3;
% beginindex=2;
% endindex=1651;
% % [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% % [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% % tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% % playdata=[playdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% playres=[playres tmp];
% disp('-----------------------------');
% 
% beginindex=1653;
% endindex=7218;
% % [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% % [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% % tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% % playdata=[playdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% playres=[playres tmp];
% disp('-----------------------------');
% 
% beginindex=7220;
% endindex=7878;
% % [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% % [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% % tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% % playdata=[playdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% playres=[playres tmp];
% disp('-----------------------------');
% 
% beginindex=7880;
% endindex=8358;
% % [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% % [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% % tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% % playdata=[playdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% playres=[playres tmp];
% disp('-----------------------------');
% 
% beginindex=8360;
% endindex=9063;
% % [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% % [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% % tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% % playdata=[playdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% playres=[playres tmp];
% disp('-----------------------------');
% 
% pause(10)
% 
% filestring='dogLogRaw_2014-04-25_13-05-47-No4-5225.xlsx';
% sheet=3;
% beginindex=2;
% endindex=1846;
% % [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% % [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% % tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% % playdata=[playdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% playres=[playres tmp];
% disp('-----------------------------');
% 
% beginindex=1848;
% endindex=2080;
% % [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% % [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% % tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% % playdata=[playdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% playres=[playres tmp];
% disp('-----------------------------');
% 
% beginindex=2082;
% endindex=4559;
% % [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% % [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% % tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% % playdata=[playdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% playres=[playres tmp];
% disp('-----------------------------');
% 
% beginindex=4561;
% endindex=8359;
% % [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% % [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% % tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% % playdata=[playdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% playres=[playres tmp];
% disp('-----------------------------');
% 
% pause(10)
% 
% filestring='dogLogRaw_2014-04-25_09-55-21-No4-0009.xlsx';
% sheet=7;
% beginindex=2;
% endindex=135;
% % [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% % [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% % tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% % playdata=[playdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% playres=[playres tmp];
% disp('-----------------------------');
% 
% beginindex=137;
% endindex=487;
% % [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% % [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% % tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% % playdata=[playdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% playres=[playres tmp];
% disp('-----------------------------');
% 
% beginindex=489;
% endindex=1888;
% % [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% % [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% % tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% % playdata=[playdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% playres=[playres tmp];
% disp('-----------------------------');
% 
% beginindex=1890;
% endindex=3640;
% % [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% % [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% % tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% % playdata=[playdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% playres=[playres tmp];
% disp('-----------------------------');
% 
% beginindex=3642;
% endindex=4692;
% % [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% % [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% % tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% % playdata=[playdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% playres=[playres tmp];
% disp('-----------------------------');
% 
% beginindex=4694;
% endindex=5293;
% % [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% % [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% % tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% % playdata=[playdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% playres=[playres tmp];
% disp('-----------------------------');
% 
% pause(10)
% 
% filestring='dogLogRaw_2014-04-25_13-05-27-No3-5204.xlsx';
% sheet=3;
% beginindex=2;
% endindex=972;
% % [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% % [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% % tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% % playdata=[playdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% playres=[playres tmp];
% disp('-----------------------------');
% 
% beginindex=6848;
% endindex=9427;
% % [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% % [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% % tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% % playdata=[playdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% playres=[playres tmp];
% disp('-----------------------------');
% 
% beginindex=9429;
% endindex=12000;
% % [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% % [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% % tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% % playdata=[playdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% playres=[playres tmp];
% disp('-----------------------------');

save ranplaydata.mat playdata;
% filename=sprintf('%s.mat',savematfile);
% save(filename,'playres');
