function [accx,accy,accz,gyrox,gyroy,gyroz,polarth,polarr]=getagp(filestring,sheet,beginindex,endindex,invA)
% input: filestring.xls,xls sheet,begin index, end index, inv A
%   real data x,y,z = inv A * recording data x,y,z
% output: acc_x,acc_y,acc_z,gyro_x,gyro_y,gyro_z,acc_polar_theta,acc_polar_r

% filestring='dogLogRaw_2013-10-28_09-17-08(push when walk)';
% sheet=1;
% beginindex=1500;
% endindex=2000;

% if nargin<5
%     invA=[1,0,0;0,1,0;0,0,1];
% end;
    
% raw acc x,y,z
acc_x_range = [['C','',num2str(beginindex)],':',['C','',num2str(endindex)]];
accx = xlsread(filestring,sheet,acc_x_range);
acc_y_range = [['D','',num2str(beginindex)],':',['D','',num2str(endindex)]];
accy = xlsread(filestring,sheet,acc_y_range);
acc_z_range = [['E','',num2str(beginindex)],':',['E','',num2str(endindex)]];
accz = xlsread(filestring,sheet,acc_z_range);

% recover from incline angles of the sensor
if nargin==5
    acc=[accx accy accz]';
    acc=invA*acc;
    accx=acc(1,:)';
    accy=acc(2,:)';
    accz=acc(3,:)';
end;

% raw polar theta,r
[polarth,polarr]=cart2pol(accx,accz);
polarth=polarth*180/pi;

% filter
% [b,a] = butter(2,0.1);
% polarth = filter(b,a,polarth);
% polarr = filter(b,a,polarr);
% accy = filter(b,a,accy);

% raw gyro x,y,z
gyro_x_range = [['G','',num2str(beginindex)],':',['G','',num2str(endindex)]];
gyrox = xlsread(filestring,sheet,gyro_x_range);
gyro_y_range = [['H','',num2str(beginindex)],':',['H','',num2str(endindex)]];
gyroy = xlsread(filestring,sheet,gyro_y_range);
gyro_z_range = [['I','',num2str(beginindex)],':',['I','',num2str(endindex)]];
gyroz = xlsread(filestring,sheet,gyro_z_range);
