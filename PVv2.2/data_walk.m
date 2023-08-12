% function walk(features,savematfile)
% extract features from walking
% thres:0.25  results: 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  
% filter setup
% [b,a] = butter(2,0.1);
% features=1;

% 20140128 data, Grade Six boys
filestring='dogLogRaw_2014-01-28_11-09-00.xlsx'  % #1
sheet=4;
beginindex=2;
endindex=122;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
walkdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
% walkres=pvdetect(filestring,sheet,beginindex,endindex,features);
disp('-----------------------------');

filestring='dogLogRaw_2014-01-28_11-09-00.xlsx'  % #3
sheet=4;
beginindex=263;
endindex=508;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
walkdata=[walkdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% walkres=[walkres tmp];
disp('-----------------------------');

% 20140129 data, Grade Two boys
invA=[0.0976   -0.1687    0.9808;0.2069    0.9674    0.1458;-0.9735    0.1887    0.1293];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx';  % #5
sheet=8;
beginindex=2;
endindex=152;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
walkdata=[walkdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% walkres=[walkres tmp];
disp('-----------------------------');

% 20140129 data, Grade Six boys
filestring='dogLogRaw_2014-01-29_12-37-46.xlsx';  % #7
sheet=7;
beginindex=2;
endindex=92;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
walkdata=[walkdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% walkres=[walkres tmp];
disp('-----------------------------');

% 20140129 data, Grade Six girls
filestring='dogLogRaw_2014-01-29_14-15-17.xlsx';  % #9
sheet=7;
beginindex=2;
endindex=751;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
walkdata=[walkdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% walkres=[walkres tmp];
disp('-----------------------------');

% 20140129 data, Grade Six girls
filestring='dogLogRaw_2014-01-29_14-15-17.xlsx';  % #11
sheet=7;
beginindex=1304;
endindex=1704;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
walkdata=[walkdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% walkres=[walkres tmp];
disp('-----------------------------');

pause(10)

% 20140425 AM data, Grade Two children
filestring='dogLogRaw_2014-04-25_09-55-21-No4-0009.xlsx'  % #13
sheet=2;
beginindex=2;
endindex=2151;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
walkdata=[walkdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% walkres=[walkres tmp];
disp('-----------------------------');

% 20140425 PM data, Grade Six boys
filestring='dogLogRaw_2014-04-25_12-33-43-No3-2038.xlsx'  % #15
sheet=3;
beginindex=2;
endindex=2451;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
walkdata=[walkdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% walkres=[walkres tmp];
disp('-----------------------------');

% filestring='dogLogRaw_2014-04-25_12-36-21-No4-2315.xlsx'; 
invA=[0.0255    0.0877    0.9958; 0.1680    0.9816   -0.0908; -0.9854    0.1697    0.0103];
filestring='dogLogRaw_2014-04-25_12-36-21-No4-2315.xlsx'  % #17
sheet=3;
beginindex=2;
endindex=2406;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
walkdata=[walkdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% walkres=[walkres tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-04-25_13-21-46-No4-6811.xlsx'  % #19
sheet=3;
beginindex=2;
endindex=961;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
walkdata=[walkdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% walkres=[walkres tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-04-25_13-21-59-No5-6824.xlsx'  % #20
sheet=3;
beginindex=2;
endindex=951;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
walkdata=[walkdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% walkres=[walkres tmp];
disp('-----------------------------');

% 20140425 PM data, Grade Six girls
% filestring='dogLogRaw_2014-04-25_13-21-34-No3-6759.xlsx'; 
invA=[0.0660    0.1848    0.9806;0.1125    0.9751   -0.1913;-0.9915    0.1229    0.0436];
filestring='dogLogRaw_2014-04-25_13-21-34-No3-6759.xlsx'  % #18
sheet=3;
beginindex=2;
endindex=902;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
walkdata=[walkdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% walkres=[walkres tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-04-25_12-34-19-No5-2114.xlsx'  % #16
sheet=3;
beginindex=2;
endindex=2568;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
walkdata=[walkdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% walkres=[walkres tmp];
disp('-----------------------------');

% filestring='dogLogRaw_2014-04-25_09-55-45-No5-0034.xlsx'; 
invA=[0.9605   -0.0072    0.2780;0.1061    0.9335   -0.3425;-0.2571    0.3585    0.8975];
filestring='dogLogRaw_2014-04-25_09-55-45-No5-0034.xlsx'  % #14
sheet=3;
beginindex=2;
endindex=2101;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
walkdata=[walkdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% walkres=[walkres tmp];
disp('-----------------------------');

pause(10)

% 20140129 data, Grade Six girls
filestring='dogLogRaw_2014-01-29_14-15-17.xlsx';  % #12
sheet=7;
beginindex=1706;
endindex=1955;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
walkdata=[walkdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% walkres=[walkres tmp];
disp('-----------------------------');

% 20140129 data, Grade Six girls
filestring='dogLogRaw_2014-01-29_14-15-17.xlsx';  % #10
sheet=7;
beginindex=753;
endindex=1302;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
walkdata=[walkdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% walkres=[walkres tmp];
disp('-----------------------------');

% 20140129 data, Grade Six boys
filestring='dogLogRaw_2014-01-29_12-37-46.xlsx';  % #8
sheet=7;
beginindex=94;
endindex=384;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
walkdata=[walkdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% walkres=[walkres tmp];
disp('-----------------------------');

% 20140129 data, Grade Two boys
invA=[0.0976   -0.1687    0.9808;0.2069    0.9674    0.1458;-0.9735    0.1887    0.1293];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx';  % #6
sheet=8;
beginindex=154;
endindex=334;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
walkdata=[walkdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features,invA);
% walkres=[walkres tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-01-28_11-09-00.xlsx'  % #4
sheet=4;
beginindex=510;
endindex=750;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
walkdata=[walkdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% walkres=[walkres tmp];
disp('-----------------------------');

filestring='dogLogRaw_2014-01-28_11-09-00.xlsx'  % #2
sheet=4;
beginindex=124;
endindex=261;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[peak_polarr,delta_polarth,mean_peak_gyro,area_acc_y,mean_afterpeak_polarr,var_afterpeak_polarr,mean_afterpeak_gyro,var_afterpeak_gyro]=findexforce(polarr,polarth,accy,gyrox,gyroy,gyroz);
tmpdata=[peak_polarr;delta_polarth;mean_peak_gyro;area_acc_y;mean_afterpeak_polarr;var_afterpeak_polarr;mean_afterpeak_gyro;var_afterpeak_gyro];
walkdata=[walkdata tmpdata];
% tmp=pvdetect(filestring,sheet,beginindex,endindex,features);
% walkres=[walkres tmp];
disp('-----------------------------');

save walkdata.mat walkdata;
% filename=sprintf('%s.mat',savematfile);
% save(filename,'walkres');
