% extract features from pushing downs
% undone: we need to extract some statistical features from accy,polarr,polarth
% filter setup
[b,a] = butter(2,0.1);
% 20140128 data, Grade Six boys
filestring='dogLogRaw_2014-01-28_11-09-00.xlsx';
sheet=2;
beginindex=2;
endindex=300;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
accyf = filter(b,a,accy);
polarrf = filter(b,a,polarr);
polarthf = filter(b,a,polarth);
[max_polarr,max_gyro,area_gyro,mean_bef_down,mean_aft_down]=getfeafordown(polarr,accy,gyrox,gyroy,gyroz);
% subplot(3,1,1);
% plot(accyf);
% subplot(3,1,2);
% plot(polarrf);
% subplot(3,1,3);
% plot(polarthf);

beginindex=302;
endindex=590;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
accyf = filter(b,a,accy);
polarrf = filter(b,a,polarr);
polarthf = filter(b,a,polarth);
[max_polarr,max_gyro,area_gyro,mean_bef_down,mean_aft_down]=getfeafordown(polarr,accy,gyrox,gyroy,gyroz);
% subplot(3,1,1);
% plot(accyf);
% subplot(3,1,2);
% plot(polarrf);
% subplot(3,1,3);
% plot(polarthf);

% 20140129 data, Grade Two boys
invA=[0.9780 -0.2085 0;0.2085 0.9780 0; 0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx';
sheet=3;
beginindex=2;
endindex=292;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
accyf = filter(b,a,accy);
polarrf = filter(b,a,polarr);
polarthf = filter(b,a,polarth);
[max_polarr,max_gyro,area_gyro,mean_bef_down,mean_aft_down]=getfeafordown(polarr,accy,gyrox,gyroy,gyroz);

beginindex=294;
endindex=554;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
accyf = filter(b,a,accy);
polarrf = filter(b,a,polarr);
polarthf = filter(b,a,polarth);
[max_polarr,max_gyro,area_gyro,mean_bef_down,mean_aft_down]=getfeafordown(polarr,accy,gyrox,gyroy,gyroz);

beginindex=556;
endindex=856;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
accyf = filter(b,a,accy);
polarrf = filter(b,a,polarr);
polarthf = filter(b,a,polarth);
[max_polarr,max_gyro,area_gyro,mean_bef_down,mean_aft_down]=getfeafordown(polarr,accy,gyrox,gyroy,gyroz);

beginindex=858;
endindex=1098;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
accyf = filter(b,a,accy);
polarrf = filter(b,a,polarr);
polarthf = filter(b,a,polarth);
[max_polarr,max_gyro,area_gyro,mean_bef_down,mean_aft_down]=getfeafordown(polarr,accy,gyrox,gyroy,gyroz);

% beginindex=1100;  
% endindex=1340;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% accyf = filter(b,a,accy);
% polarrf = filter(b,a,polarr);
% polarthf = filter(b,a,polarth);
% [max_polarr,max_gyro,area_gyro,mean_bef_down,mean_aft_down]=getfeafordown(polarr,accy,gyrox,gyroy,gyroz);

beginindex=1342; 
endindex=1622;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
accyf = filter(b,a,accy);
polarrf = filter(b,a,polarr);
polarthf = filter(b,a,polarth);
[max_polarr,max_gyro,area_gyro,mean_bef_down,mean_aft_down]=getfeafordown(polarr,accy,gyrox,gyroy,gyroz);

beginindex=1624; 
endindex=1864;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
accyf = filter(b,a,accy);
polarrf = filter(b,a,polarr);
polarthf = filter(b,a,polarth);
[max_polarr,max_gyro,area_gyro,mean_bef_down,mean_aft_down]=getfeafordown(polarr,accy,gyrox,gyroy,gyroz);

beginindex=1866; 
endindex=2116;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
accyf = filter(b,a,accy);
polarrf = filter(b,a,polarr);
polarthf = filter(b,a,polarth);
[max_polarr,max_gyro,area_gyro,mean_bef_down,mean_aft_down]=getfeafordown(polarr,accy,gyrox,gyroy,gyroz);

beginindex=2118; 
endindex=2398;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
accyf = filter(b,a,accy);
polarrf = filter(b,a,polarr);
polarthf = filter(b,a,polarth);
[max_polarr,max_gyro,area_gyro,mean_bef_down,mean_aft_down]=getfeafordown(polarr,accy,gyrox,gyroy,gyroz);

beginindex=4977;
endindex=5227;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
accyf = filter(b,a,accy);
polarrf = filter(b,a,polarr);
polarthf = filter(b,a,polarth);
[max_polarr,max_gyro,area_gyro,mean_bef_down,mean_aft_down]=getfeafordown(polarr,accy,gyrox,gyroy,gyroz);

% subplot(3,1,1);
% plot(accyf);
% subplot(3,1,2);
% plot(polarrf);
% subplot(3,1,3);
% plot(polarthf);

% 20140129 data, Grade Six boys
filestring='dogLogRaw_2014-01-29_12-37-46.xlsx';
sheet=2;

beginindex=254;
endindex=503;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
accyf = filter(b,a,accy);
polarrf = filter(b,a,polarr);
polarthf = filter(b,a,polarth);
[max_polarr,max_gyro,area_gyro,mean_bef_down,mean_aft_down]=getfeafordown(polarr,accy,gyrox,gyroy,gyroz);

beginindex=505;
endindex=754;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
accyf = filter(b,a,accy);
polarrf = filter(b,a,polarr);
polarthf = filter(b,a,polarth);
[max_polarr,max_gyro,area_gyro,mean_bef_down,mean_aft_down]=getfeafordown(polarr,accy,gyrox,gyroy,gyroz);

beginindex=756;
endindex=1005;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
accyf = filter(b,a,accy);
polarrf = filter(b,a,polarr);
polarthf = filter(b,a,polarth);
[max_polarr,max_gyro,area_gyro,mean_bef_down,mean_aft_down]=getfeafordown(polarr,accy,gyrox,gyroy,gyroz);

beginindex=1007;
endindex=1206;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
accyf = filter(b,a,accy);
polarrf = filter(b,a,polarr);
polarthf = filter(b,a,polarth);
[max_polarr,max_gyro,area_gyro,mean_bef_down,mean_aft_down]=getfeafordown(polarr,accy,gyrox,gyroy,gyroz);

% subplot(3,1,1);
% plot(accyf);
% subplot(3,1,2);
% plot(polarrf);
% subplot(3,1,3);
% plot(polarthf);

% 20140129 data, Grade Six girls
filestring='dogLogRaw_2014-01-29_14-15-17.xlsx';
sheet=3;

beginindex=2;
endindex=252;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
accyf = filter(b,a,accy);
polarrf = filter(b,a,polarr);
polarthf = filter(b,a,polarth);
[max_polarr,max_gyro,area_gyro,mean_bef_down,mean_aft_down]=getfeafordown(polarr,accy,gyrox,gyroy,gyroz);

beginindex=254;
endindex=504;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
accyf = filter(b,a,accy);
polarrf = filter(b,a,polarr);
polarthf = filter(b,a,polarth);
[max_polarr,max_gyro,area_gyro,mean_bef_down,mean_aft_down]=getfeafordown(polarr,accy,gyrox,gyroy,gyroz);

beginindex=506;
endindex=755;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
accyf = filter(b,a,accy);
polarrf = filter(b,a,polarr);
polarthf = filter(b,a,polarth);
[max_polarr,max_gyro,area_gyro,mean_bef_down,mean_aft_down]=getfeafordown(polarr,accy,gyrox,gyroy,gyroz);

beginindex=757;
endindex=1007;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
accyf = filter(b,a,accy);
polarrf = filter(b,a,polarr);
polarthf = filter(b,a,polarth);
[max_polarr,max_gyro,area_gyro,mean_bef_down,mean_aft_down]=getfeafordown(polarr,accy,gyrox,gyroy,gyroz);

beginindex=1009;
endindex=1224;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
accyf = filter(b,a,accy);
polarrf = filter(b,a,polarr);
polarthf = filter(b,a,polarth);
[max_polarr,max_gyro,area_gyro,mean_bef_down,mean_aft_down]=getfeafordown(polarr,accy,gyrox,gyroy,gyroz);

beginindex=1527;
endindex=1831;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
accyf = filter(b,a,accy);
polarrf = filter(b,a,polarr);
polarthf = filter(b,a,polarth);
[max_polarr,max_gyro,area_gyro,mean_bef_down,mean_aft_down]=getfeafordown(polarr,accy,gyrox,gyroy,gyroz);

beginindex=1833;
endindex=2103;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
accyf = filter(b,a,accy);
polarrf = filter(b,a,polarr);
polarthf = filter(b,a,polarth);
[max_polarr,max_gyro,area_gyro,mean_bef_down,mean_aft_down]=getfeafordown(polarr,accy,gyrox,gyroy,gyroz);

% subplot(3,1,1);
% plot(accyf);
% subplot(3,1,2);
% plot(polarrf);
% subplot(3,1,3);
% plot(polarthf);

% corrected data
invA=[0.9780 -0.2085 0;0.2085 0.9780 0; 0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx';
sheet=1;

% Not good
% beginindex=22290;
% endindex=22570;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% [max_polarr,max_gyro,area_gyro,mean_bef_down,mean_aft_down]=getfeafordown(polarr,accy,gyrox,gyroy,gyroz);

beginindex=56070;
endindex=56520;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[max_polarr,max_gyro,area_gyro,mean_bef_down,mean_aft_down]=getfeafordown(polarr,accy,gyrox,gyroy,gyroz);

beginindex=144090;
endindex=144449;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[max_polarr,max_gyro,area_gyro,mean_bef_down,mean_aft_down]=getfeafordown(polarr,accy,gyrox,gyroy,gyroz);

filestring='dogLogRaw_2014-01-29_12-37-46.xlsx';
sheet=1;
beginindex=5260;
endindex=5650;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[max_polarr,max_gyro,area_gyro,mean_bef_down,mean_aft_down]=getfeafordown(polarr,accy,gyrox,gyroy,gyroz);

filestring='dogLogRaw_2014-01-29_14-15-17.xlsx';
sheet=1;
beginindex=30850;
endindex=31190;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[max_polarr,max_gyro,area_gyro,mean_bef_down,mean_aft_down]=getfeafordown(polarr,accy,gyrox,gyroy,gyroz);

beginindex=33575;
endindex=33850;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[max_polarr,max_gyro,area_gyro,mean_bef_down,mean_aft_down]=getfeafordown(polarr,accy,gyrox,gyroy,gyroz);
