% test the 8 activities
% Loop for all
for i=1:8
    features=i
%     features=[4,7];
%     i=47;
% walk
savematfile=sprintf('%s%d.mat','D:\oulu\PVv2.2\results\11-20150104\fold-2\walk',i)
walk(features,savematfile);
pause(10)
% run
savematfile=sprintf('%s%d.mat','D:\oulu\PVv2.2\results\11-20150104\fold-2\run',i)
running(features,savematfile);
pause(10)
% jump
savematfile=sprintf('%s%d.mat','D:\oulu\PVv2.2\results\11-20150104\fold-2\jump',i)
jump(features,savematfile);
pause(10)
% situp
savematfile=sprintf('%s%d.mat','D:\oulu\PVv2.2\results\11-20150104\fold-2\situp',i)
situp(features,savematfile);
pause(10)
% play
savematfile=sprintf('%s%d.mat','D:\oulu\PVv2.2\results\11-20150104\fold-2\play',i)
randomplay(features,savematfile);
pause(10)
% shake
savematfile=sprintf('%s%d.mat','D:\oulu\PVv2.2\results\11-20150104\fold-2\shake',i)
shake(features,savematfile);
pause(10)
% shoulderhit
savematfile=sprintf('%s%d.mat','D:\oulu\PVv2.2\results\11-20150104\fold-2\shoulderhit',i)
shoulderhit(features,savematfile);
pause(10)
% push
savematfile=sprintf('%s%d.mat','D:\oulu\PVv2.2\results\11-20150104\fold-2\push',i)
push(features,savematfile);
pause(10)
end;
