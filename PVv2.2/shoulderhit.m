function shoulderhit(features,savematfile)
% extract features from shoulder hit
% thres:0.25  results: 1 | 1 | 1 | 0 | 1 | 0 | 0 | 1 | 0 | 0 | 1 | 0 | 0 |
% 0 | 0 | 1 | 1 | 1 | 1 | 0 | 0 | 0 | 1 | 0 | 1 | 1 
% filter setup
% [b,a] = butter(2,0.1);
zs=zeros(8,1)-1;
% 20140128 data, Grade Six boys
filestring='dogLogRaw_2014-01-28_11-09-00.xlsx'  % #1
sheet=5;
beginindex=2;
endindex=352;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% shdhitdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
shdhitres=pvdetect(filestring,sheet,beginindex,endindex,features);
disp('-----------------------------');

% 20140129 data, Grade Two boys
invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #3
sheet=7;
beginindex=2;
endindex=300;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shdhitdata=[shdhitdata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
shdhitres=[shdhitres -1 tmp];
disp('-----------------------------');

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #5
sheet=7;
beginindex=503;
endindex=651;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shdhitdata=[shdhitdata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
shdhitres=[shdhitres -1 tmp];
disp('-----------------------------');

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #7
sheet=7;
beginindex=855;
endindex=1104;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shdhitdata=[shdhitdata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
shdhitres=[shdhitres -1 tmp];
disp('-----------------------------');

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #9
sheet=7;
beginindex=1358;
endindex=1558;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shdhitdata=[shdhitdata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
shdhitres=[shdhitres -1 tmp];
disp('-----------------------------');

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #11
sheet=7;
beginindex=1761;
endindex=1962;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shdhitdata=[shdhitdata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
shdhitres=[shdhitres -1 tmp];
disp('-----------------------------');

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #13
sheet=7;
beginindex=2418;
endindex=2662;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shdhitdata=[shdhitdata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
shdhitres=[shdhitres -1 tmp];
disp('-----------------------------');

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #15
sheet=7;
beginindex=2816;
endindex=3015;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shdhitdata=[shdhitdata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
shdhitres=[shdhitres -1 tmp];
disp('-----------------------------');

pause(10)

% 20140129 data, Grade Six boys
filestring='dogLogRaw_2014-01-29_12-37-46.xlsx'  % #17
sheet=3;
beginindex=303;
endindex=602;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shdhitdata=[shdhitdata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
shdhitres=[shdhitres -1 tmp];
disp('-----------------------------');

% 20140129 data, Grade Six boys
filestring='dogLogRaw_2014-01-29_12-37-46.xlsx'  % #19
sheet=3;
beginindex=905;
endindex=1204;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shdhitdata=[shdhitdata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
shdhitres=[shdhitres -1 tmp];
disp('-----------------------------');

% 20140129 data, Grade Six girls
filestring='dogLogRaw_2014-01-29_14-15-17.xlsx'  % #21
sheet=4;
beginindex=2;
endindex=253;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shdhitdata=[shdhitdata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
shdhitres=[shdhitres -1 tmp];
disp('-----------------------------');

% 20140129 data, Grade Six girls
filestring='dogLogRaw_2014-01-29_14-15-17.xlsx'  % #23
sheet=4;
beginindex=507;
endindex=707;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shdhitdata=[shdhitdata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
shdhitres=[shdhitres -1 tmp];
disp('-----------------------------');

% 20140129 data, Grade Six girls
filestring='dogLogRaw_2014-01-29_14-15-17.xlsx'  % #25
sheet=4;
beginindex=911;
endindex=1211;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shdhitdata=[shdhitdata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
shdhitres=[shdhitres -1 tmp];
disp('-----------------------------');

pause(10)

invA=[0.9605   -0.0072    0.2780;0.1061    0.9335   -0.3425;-0.2571    0.3585    0.8975];
filestring='dogLogRaw_2014-04-25_09-55-45-No5-0034.xlsx';  % #27
sheet=5;
beginindex=2;
endindex=183;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shdhitdata=[shdhitdata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
shdhitres=[shdhitres -1 tmp];
disp('-----------------------------');

invA=[0.0660    0.1848    0.9806;0.1125    0.9751   -0.1913;-0.9915    0.1229    0.0436];
filestring='dogLogRaw_2014-04-25_13-21-34-No3-6759.xlsx';  % #29
sheet=6;
beginindex=205;
endindex=349;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shdhitdata=[shdhitdata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
shdhitres=[shdhitres -1 tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-04-25_13-21-59-No5-6824.xlsx';  % #31
sheet=6;
beginindex=2;
endindex=438;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shdhitdata=[shdhitdata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
shdhitres=[shdhitres -1 tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-04-25_12-33-43-No3-2038.xlsx';  % #33
sheet=9;
beginindex=354;
endindex=812;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shdhitdata=[shdhitdata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
shdhitres=[shdhitres -1 tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-04-25_09-55-21-No4-0009.xlsx';  % #35
sheet=4;
beginindex=2;
endindex=300;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shdhitdata=[shdhitdata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
shdhitres=[shdhitres -1 tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-04-25_12-33-43-No3-2038.xlsx';  % #34
sheet=9;
beginindex=814;
endindex=1242;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shdhitdata=[shdhitdata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
shdhitres=[shdhitres -1 tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-04-25_12-33-43-No3-2038.xlsx';  % #32
sheet=9;
beginindex=2;
endindex=352;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shdhitdata=[shdhitdata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
shdhitres=[shdhitres -1 tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-04-25_13-21-46-No4-6811.xlsx';  % #30
sheet=6;
beginindex=2;
endindex=351;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shdhitdata=[shdhitdata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
shdhitres=[shdhitres -1 tmp];
disp('-----------------------------');

pause(10)

invA=[0.0660    0.1848    0.9806;0.1125    0.9751   -0.1913;-0.9915    0.1229    0.0436];
filestring='dogLogRaw_2014-04-25_13-21-34-No3-6759.xlsx';  % #28
sheet=6;
beginindex=2;
endindex=203;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shdhitdata=[shdhitdata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
shdhitres=[shdhitres -1 tmp];
disp('-----------------------------');

% 20140129 data, Grade Six girls
filestring='dogLogRaw_2014-01-29_14-15-17.xlsx'  % #26
sheet=4;
beginindex=1213;
endindex=1412;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shdhitdata=[shdhitdata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
shdhitres=[shdhitres -1 tmp];
disp('-----------------------------');

% 20140129 data, Grade Six girls
filestring='dogLogRaw_2014-01-29_14-15-17.xlsx'  % #24
sheet=4;
beginindex=709;
endindex=909;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shdhitdata=[shdhitdata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
shdhitres=[shdhitres -1 tmp];
disp('-----------------------------');

% 20140129 data, Grade Six girls
filestring='dogLogRaw_2014-01-29_14-15-17.xlsx'  % #22
sheet=4;
beginindex=255;
endindex=505;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shdhitdata=[shdhitdata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
shdhitres=[shdhitres -1 tmp];
disp('-----------------------------');

% 20140129 data, Grade Six boys
filestring='dogLogRaw_2014-01-29_12-37-46.xlsx'  % #20
sheet=3;
beginindex=1206;
endindex=1455;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shdhitdata=[shdhitdata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
shdhitres=[shdhitres -1 tmp];
disp('-----------------------------');

% 20140129 data, Grade Six boys
filestring='dogLogRaw_2014-01-29_12-37-46.xlsx'  % #18
sheet=3;
beginindex=604;
endindex=903;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shdhitdata=[shdhitdata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
shdhitres=[shdhitres -1 tmp];
disp('-----------------------------');

% 20140129 data, Grade Six boys
filestring='dogLogRaw_2014-01-29_12-37-46.xlsx'  % #16
sheet=3;
beginindex=2;
endindex=301;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shdhitdata=[shdhitdata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
shdhitres=[shdhitres -1 tmp];
disp('-----------------------------');

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #14
sheet=7;
beginindex=2664;
endindex=2814;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shdhitdata=[shdhitdata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
shdhitres=[shdhitres -1 tmp];
disp('-----------------------------');

pause(10)

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #12
sheet=7;
beginindex=1964;
endindex=2213;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shdhitdata=[shdhitdata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
shdhitres=[shdhitres -1 tmp];
disp('-----------------------------');

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #10
sheet=7;
beginindex=1560;
endindex=1759;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shdhitdata=[shdhitdata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
shdhitres=[shdhitres -1 tmp];
disp('-----------------------------');

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #8
sheet=7;
beginindex=1106;
endindex=1356;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shdhitdata=[shdhitdata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
shdhitres=[shdhitres -1 tmp];
disp('-----------------------------');

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #6
sheet=7;
beginindex=653;
endindex=853;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shdhitdata=[shdhitdata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
shdhitres=[shdhitres -1 tmp];
disp('-----------------------------');

invA=[0.9780 -0.2085 0;0.2085 0.9780 0;0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx'  % #4
sheet=7;
beginindex=302;
endindex=501;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shdhitdata=[shdhitdata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
shdhitres=[shdhitres -1 tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-01-28_11-09-00.xlsx'  % #2
sheet=5;
beginindex=354;
endindex=603;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% [peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
% tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% shdhitdata=[shdhitdata zs tmpdata];
tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
shdhitres=[shdhitres -1 tmp];
disp('-----------------------------');

% save shdhitdata.mat shdhitdata;
filename=sprintf('%s.mat',savematfile);
save(filename,'shdhitres');
