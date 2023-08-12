% extract features from falling downs
% undone: we need to extract some statistical features from accy,polarr,polarth
% filter setup
[b,a] = butter(2,0.1);
% 20140128 data, Grade Six boys
filestring='dogLogRaw_2014-01-28_11-09-00.xlsx';
sheet=6;
% beginindex=2;
% endindex=248;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% accyf = filter(b,a,accy);
% polarrf = filter(b,a,polarr);
% polarthf = filter(b,a,polarth);

% beginindex=250;
% endindex=516;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
% accyf = filter(b,a,accy);
% polarrf = filter(b,a,polarr);
% polarthf = filter(b,a,polarth);

% subplot(3,1,1);
% plot(accyf);
% subplot(3,1,2);
% plot(polarrf);
% subplot(3,1,3);
% plot(polarthf);

% 20140129 data, Grade Two boys
invA=[0.9780 -0.2085 0;0.2085 0.9780 0; 0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx';
sheet=6;

% NOTICE:there is another high peak near the peak where the actor fall down
% beginindex=2;
% endindex=262;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% accyf = filter(b,a,accy);
% polarrf = filter(b,a,polarr);
% polarthf = filter(b,a,polarth);
% [max_polarr,max_gyro,area_gyro,mean_bef_down,mean_aft_down]=getfeafordown(polarr,accy,gyrox,gyroy,gyroz);

% beginindex=264;
% endindex=510;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% accyf = filter(b,a,accy);
% polarrf = filter(b,a,polarr);
% polarthf = filter(b,a,polarth);

beginindex=512;
endindex=757;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
accyf = filter(b,a,accy);
polarrf = filter(b,a,polarr);
polarthf = filter(b,a,polarth);
[max_polarr,max_gyro,area_gyro,mean_bef_down,mean_aft_down]=getfeafordown(polarr,accy,gyrox,gyroy,gyroz);

beginindex=759;
endindex=1059;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
accyf = filter(b,a,accy);
polarrf = filter(b,a,polarr);
polarthf = filter(b,a,polarth);
[max_polarr,max_gyro,area_gyro,mean_bef_down,mean_aft_down]=getfeafordown(polarr,accy,gyrox,gyroy,gyroz);

% beginindex=1061;
% endindex=1356;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% accyf = filter(b,a,accy);
% polarrf = filter(b,a,polarr);
% polarthf = filter(b,a,polarth);

beginindex=1358;
endindex=1707;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
accyf = filter(b,a,accy);
polarrf = filter(b,a,polarr);
polarthf = filter(b,a,polarth);
[max_polarr,max_gyro,area_gyro,mean_bef_down,mean_aft_down]=getfeafordown(polarr,accy,gyrox,gyroy,gyroz);

% NOTICE:there is another high peak near the peak where the actor fall down
% beginindex=1709;
% endindex=2010;
% [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
% accyf = filter(b,a,accy);
% polarrf = filter(b,a,polarr);
% polarthf = filter(b,a,polarth);
% [max_polarr,max_gyro,area_gyro,mean_bef_down,mean_aft_down]=getfeafordown(polarr,accy,gyrox,gyroy,gyroz);

% subplot(3,1,1);
% plot(accyf);
% subplot(3,1,2);
% plot(polarrf);
% subplot(3,1,3);
% plot(polarthf);

% 20140129 data, Grade Six girls
filestring='dogLogRaw_2014-01-29_14-15-17.xlsx';
sheet=5;

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
endindex=983;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
accyf = filter(b,a,accy);
polarrf = filter(b,a,polarr);
polarthf = filter(b,a,polarth);
[max_polarr,max_gyro,area_gyro,mean_bef_down,mean_aft_down]=getfeafordown(polarr,accy,gyrox,gyroy,gyroz);

% NOTICE:there is another high peak near the peak where the actor fall down
beginindex=985;
endindex=1185;
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
filestring='dogLogRaw_2014-01-28_11-09-00.xlsx';
sheet=1;
beginindex=13850;
endindex=14290;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[max_polarr,max_gyro,area_gyro,mean_bef_down,mean_aft_down]=getfeafordown(polarr,accy,gyrox,gyroy,gyroz);

beginindex=15150;
endindex=15569;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex);
[max_polarr,max_gyro,area_gyro,mean_bef_down,mean_aft_down]=getfeafordown(polarr,accy,gyrox,gyroy,gyroz);

invA=[0.9780 -0.2085 0;0.2085 0.9780 0; 0 0 1];
filestring='dogLogRaw_2014-01-29_10-58-59.xlsx';
sheet=1;

beginindex=34390;
endindex=34680;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[max_polarr,max_gyro,area_gyro,mean_bef_down,mean_aft_down]=getfeafordown(polarr,accy,gyrox,gyroy,gyroz);

beginindex=35551;
endindex=35911;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[max_polarr,max_gyro,area_gyro,mean_bef_down,mean_aft_down]=getfeafordown(polarr,accy,gyrox,gyroy,gyroz);

beginindex=37591;
endindex=37961;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[max_polarr,max_gyro,area_gyro,mean_bef_down,mean_aft_down]=getfeafordown(polarr,accy,gyrox,gyroy,gyroz);

beginindex=39940;
endindex=40275;
[accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA);
[max_polarr,max_gyro,area_gyro,mean_bef_down,mean_aft_down]=getfeafordown(polarr,accy,gyrox,gyroy,gyroz);
