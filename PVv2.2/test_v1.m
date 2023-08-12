function res = test(filestring,sheet,beginindex,endindex)

fs = 50; % sample rate
winlen=8; %window length
%filestring = 'activities.xlsx';
%sheet = 2;
%beginindex = 2;
%endindex = 801;
res=0;
%acc_x_range = [['C','',num2str(beginindex)],':',['C','',num2str(endindex)]];
%acc_x = xlsread(filestring,sheet,acc_x_range);
%acc_y_range = [['D','',num2str(beginindex)],':',['D','',num2str(endindex)]];
%acc_y = xlsread(filestring,sheet,acc_y_range);
%acc_z_range = [['E','',num2str(beginindex)],':',['E','',num2str(endindex)]];
%acc_z = xlsread(filestring,sheet,acc_z_range);
%acc_hori = sqrt(acc_x.^2+acc_z.^2);
%gyro_x_range = [['G','',num2str(beginindex)],':',['G','',num2str(endindex)]];
%gyro_x = xlsread(filestring,sheet,gyro_x_range);
%gyro_y_range = [['H','',num2str(beginindex)],':',['H','',num2str(endindex)]];
%gyro_y = xlsread(filestring,sheet,gyro_y_range);
%gyro_z_range = [['I','',num2str(beginindex)],':',['I','',num2str(endindex)]];
%gyro_z = xlsread(filestring,sheet,gyro_z_range);
%gyro_hori = sqrt(gyro_x.^2+gyro_z.^2);
%acc_x(30)
%acc_y(30)
%acc_z(30)
%acc_hori(50)
%gyro_hori(50)
for i=1:winlen/2*fs:(endindex-beginindex+1)
    if (i+winlen*fs-1) <= (endindex-beginindex+1)
        [a,b,c]=getdata(filestring,sheet,i,i+winlen*fs-1);
        [pushed,fallen]=ispushed(a,b,c);
        if fallen==0
            beaten=isbeaten(a,b,c);
        end
        if pushed==1 || beaten==1
            res=1;
            if pushed==1
                pushed
            end
            if beaten==1
                beaten
            end
            checked_time=i
        else
            res=0;
        end
        %aa = i
        %bb = i+8*fs-1
    else
        disp('End of file')
        %dd = i
        %cc = i+8*fs-1
    end
end

