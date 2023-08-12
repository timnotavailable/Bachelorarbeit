% function push(features,savematfile)
% extract features from pushing
% thres:0.25  results: 0 | 1 0 | 1 1 | 1 | 1     0     1     1 | 1     1
% 0 | 1 | 1     1     0     1 | 1     1     1 | 1     1     1     1 | 1
% 0     1     1     1 | 1     1     1     1 | 1     1 | 1     1 | 0 | 0 | 0
% | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 1 | 1     1     0 | 1     1     0     1
% 1     0     0     0 | 0 | 1 | 0 | 1 | 0 | 1 | 1 | 0 | 0 | 0 | 1 | 1 1 | 1
% 0 | 1     0     0     1     0 | 0     1 | 1     0 | 1 | 0     1     1
% 0     0 | 0     1     0     0 | 0 | 0 0 | 0 | 0 0 
% 
% 4 featrues results: 0 | 1  1 | 1 1 | 1 | 1     0     0     1 | 1     1
% 1 | 1 | 1     1     0     1 | 1     1     1 | 1     1     1     1 | 1
% 0     1     1     1 | 1     1     1     1 | 1     1 | 1     1 | 0 | 0 | 0
% | 0 | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 1 | 1     1     0 | 1     1     0     1
% 1     1     0     0 | 0 | 1 | 1 | 1 | 0 | 1 | 1 | 0 | 0 | 0 | 1 | 1 1 | 1
% 0 | 1     0     1     1     0 | 0     1 | 1     0 | 1 | 0     1     1
% 1     0 | 1     0     1     0 | 0 | 0     0 | 0 | 0     0

% filter setup
% [b,a] = butter(2,0.1);
zs=zeros(8,1)-1;
% 20140128 data, Grade Six boys
filestring='dogLogRaw_2014-01-28_11-09-00.xlsx'  % #1
sheet=8;
beginindex=2;
endindex=202;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
pushdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% pushres=pvdetect(filestring,sheet,beginindex,endindex,features);
disp('-----------------------------');

filestring='dogLogRaw_2014-01-28_11-09-00.xlsx'  % #3
sheet=8;
beginindex=646;
endindex=1191;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #5
sheet=4;
beginindex=244;
endindex=1134;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #7
sheet=4;
beginindex=1768;
endindex=2108;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #9
sheet=4;
beginindex=2952;
endindex=3642;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #11
sheet=4;
beginindex=4486;
endindex=5576;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #13
sheet=4;
beginindex=6420;
endindex=6860;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

pause(10)

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #15
sheet=4;
beginindex=7344;  
endindex=7592;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #17
sheet=4;
beginindex=7794;
endindex=8044;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #19
sheet=4;
beginindex=8248;
endindex=8496;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #21
sheet=4;
beginindex=8798;
endindex=9047;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #23
sheet=4;
beginindex=9300;
endindex=9449;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #25
sheet=4;
beginindex=9753;
endindex=10003;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #27
sheet=4;
beginindex=10356;
endindex=11105;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

pause(10)

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #29
sheet=4;
beginindex=12757;
endindex=13055;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #31
sheet=4;
beginindex=13257;
endindex=13531;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #33
sheet=4;
beginindex=13734;
endindex=13933;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #35
sheet=4;
beginindex=14136;
endindex=14381;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #37
sheet=4;
beginindex=14636;
endindex=14835;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-01-29_12-37-46.xlsx'  % #39
sheet=6;
beginindex=252;
endindex=501;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

pause(10)

filestring='dogLogRaw_2014-01-29_12-37-46.xlsx'  % #41
sheet=6;
beginindex=954;
endindex=1404;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-01-29_12-37-46.xlsx'  % #43
sheet=6;
beginindex=2458;
endindex=3056;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-01-29_14-15-17.xlsx'  % #45
sheet=6;
beginindex=503;
endindex=902;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-01-29_14-15-17.xlsx'  % #47
sheet=6;
beginindex=1956;
endindex=2756;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-01-29_14-15-17.xlsx'  % #49
sheet=6;
beginindex=3109;
endindex=3549;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-01-29_14-15-17.xlsx'  % #51
sheet=6;
beginindex=3903;
endindex=4352;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

invA=[0.0255    0.0877    0.9958; 0.1680    0.9816   -0.0908; -0.9854    0.1697    0.0103];
filestring='dogLogRaw_2014-04-25_12-36-21-No4-2315.xlsx';  % #53
sheet=5;
beginindex=340;
endindex=697;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

pause(10)

invA=[0.0255    0.0877    0.9958; 0.1680    0.9816   -0.0908; -0.9854    0.1697    0.0103];
filestring='dogLogRaw_2014-04-25_12-36-21-No4-2315.xlsx';  % #55
sheet=5;
beginindex=1116;
endindex=1665;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

invA=[0.0255    0.0877    0.9958; 0.1680    0.9816   -0.0908; -0.9854    0.1697    0.0103];
filestring='dogLogRaw_2014-04-25_12-36-21-No4-2315.xlsx';  % #57
sheet=5;
beginindex=2178;
endindex=2479;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

invA=[0.0660    0.1848    0.9806;0.1125    0.9751   -0.1913;-0.9915    0.1229    0.0436];
filestring='dogLogRaw_2014-04-25_13-21-34-No3-6759.xlsx';  % #59
sheet=5;
beginindex=2;
endindex=245;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-04-25_13-21-46-No4-6811.xlsx';  % #61
sheet=5;
beginindex=628;
endindex=885;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-04-25_13-21-59-No5-6824.xlsx' % #63
sheet=5;
beginindex=303;
endindex=567;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-04-25_12-33-43-No3-2038.xlsx'  % #65
sheet=6;
beginindex=2;
endindex=276;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-04-25_12-33-43-No3-2038.xlsx'  % #66
sheet=6;
beginindex=278;
endindex=657;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

pause(10)

filestring='dogLogRaw_2014-04-25_12-44-13-No5-3103.xlsx';  % #64
sheet=4;
beginindex=2;
endindex=383;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-04-25_13-21-59-No5-6824.xlsx' % #62
sheet=5;
beginindex=2;
endindex=301;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-04-25_13-21-46-No4-6811.xlsx';  % #60
sheet=5;
beginindex=2;
endindex=626;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

invA=[0.0255    0.0877    0.9958; 0.1680    0.9816   -0.0908; -0.9854    0.1697    0.0103];
filestring='dogLogRaw_2014-04-25_12-36-21-No4-2315.xlsx';  % #58
sheet=5;
beginindex=2481;
endindex=2877;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

invA=[0.0255    0.0877    0.9958; 0.1680    0.9816   -0.0908; -0.9854    0.1697    0.0103];
filestring='dogLogRaw_2014-04-25_12-36-21-No4-2315.xlsx';  % #56
sheet=5;
beginindex=1667;
endindex=2176;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

invA=[0.0255    0.0877    0.9958; 0.1680    0.9816   -0.0908; -0.9854    0.1697    0.0103];
filestring='dogLogRaw_2014-04-25_12-36-21-No4-2315.xlsx';  % #54
sheet=5;
beginindex=699;
endindex=1114;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

invA=[0.0255    0.0877    0.9958; 0.1680    0.9816   -0.0908; -0.9854    0.1697    0.0103];
filestring='dogLogRaw_2014-04-25_12-36-21-No4-2315.xlsx';  % #52
sheet=5;
beginindex=2;
endindex=338;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-01-29_14-15-17.xlsx'  % #50
sheet=6;
beginindex=3551;
endindex=3901;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

pause(10)

filestring='dogLogRaw_2014-01-29_14-15-17.xlsx'  % #48
sheet=6;
beginindex=2758;
endindex=3107;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-01-29_14-15-17.xlsx'  % #46
sheet=6;
beginindex=904;
endindex=1954;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

% 20140129 data, Grade Six girls
filestring='dogLogRaw_2014-01-29_14-15-17.xlsx'  % #44
sheet=6;
beginindex=2;
endindex=501;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-01-29_12-37-46.xlsx'  % #42
sheet=6;
beginindex=1406;
endindex=2456;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-01-29_12-37-46.xlsx'  % #40
sheet=6;
beginindex=503;
endindex=952;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

% 20140129 data, Grade Six boys
filestring='dogLogRaw_2014-01-29_12-37-46.xlsx'  % #38
sheet=6;
beginindex=2;
endindex=250;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #36
sheet=4;
beginindex=14383;
endindex=14634;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #34
sheet=4;
beginindex=13935;
endindex=14134;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

pause(10)

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #32
sheet=4;
beginindex=13533;
endindex=13732;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #30
sheet=4;
beginindex=13057;
endindex=13255;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #28
sheet=4;
beginindex=11107;
endindex=12755;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #26
sheet=4;
beginindex=10005;
endindex=10354;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #24
sheet=4;
beginindex=9451;
endindex=9751;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #22
sheet=4;
beginindex=9049;
endindex=9298;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #20
sheet=4;
beginindex=8498; 
endindex=8796;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #18
sheet=4;
beginindex=8046;
endindex=8246;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

pause(10)

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #16
sheet=4;
beginindex=7594;
endindex=7792;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #14
sheet=4;
beginindex=6862;
endindex=7342;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #12
sheet=4;
beginindex=5578;
endindex=6418;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #10
sheet=4;
beginindex=3644;
endindex=4484;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #8
sheet=4;
beginindex=2110;
endindex=2950;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #6
sheet=4;
beginindex=1136;
endindex=1766;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

% 20140129 data, Grade Two boys
invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #4
sheet=4;
beginindex=2;
endindex=242;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-01-28_11-09-00.xlsx'  % #2
sheet=8;
beginindex=204;
endindex=644;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
pushdata=[pushdata zs tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% pushres=[pushres -1 tmp];
disp('-----------------------------');

save pushdata.mat pushdata;
% filename=sprintf('%s.mat',savematfile);
% save(filename,'pushres');
