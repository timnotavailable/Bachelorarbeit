function alpha=getalpha(filestring,sheet,beginindex,endindex)
% function alpha=getalpha(filename,sheet,startindex,endindex)
% get decline angle between Y-axis and G force
acc_x_range = [['C','',num2str(beginindex)],':',['C','',num2str(endindex)]];
acc_x = xlsread(filestring,sheet,acc_x_range);
acc_y_range = [['D','',num2str(beginindex)],':',['D','',num2str(endindex)]];
acc_y = xlsread(filestring,sheet,acc_y_range);
acc_z_range = [['E','',num2str(beginindex)],':',['E','',num2str(endindex)]];
acc_z = xlsread(filestring,sheet,acc_z_range);
mean_acc_y=mean(acc_y);
cosalpha=mean_acc_y/(((mean(acc_x)^2+mean_acc_y^2)+mean(acc_z)^2)^0.5);
alpha=acos(cosalpha);