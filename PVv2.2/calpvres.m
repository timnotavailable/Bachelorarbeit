% calculate result from 8 kinds of activities from 64 .mat files
for i=1:8
%     i=47;
    feature=i
    
    cd D:\oulu\PVv2.2\results\11-20150104\fold-1
    % currentpath=pwd
    foldhalf=1;
    filename=sprintf('%s%d.mat','walk',i);
    walkres=getres(filename,foldhalf,0);
    filename=sprintf('%s%d.mat','run',i);
    runres=getres(filename,foldhalf,0);
    filename=sprintf('%s%d.mat','play',i);
    playres=getres(filename,foldhalf,0);
    filename=sprintf('%s%d.mat','jump',i);
    jumpres=getres(filename,foldhalf,0);
    filename=sprintf('%s%d.mat','situp',i);
    situpres=getres(filename,foldhalf,0);
    filename=sprintf('%s%d.mat','shake',i);
    shakeres=getres(filename,foldhalf,1);
    filename=sprintf('%s%d.mat','shoulderhit',i);
    shoulderhitres=getres(filename,foldhalf,1);
    filename=sprintf('%s%d.mat','push',i);
    pushres=getres(filename,foldhalf,1);
    averageres1=mean([walkres,runres,playres,jumpres,situpres,shakeres,shoulderhitres,pushres]);

    cd D:\oulu\PVv2.2\results\11-20150104\fold-2
    % currentpath=pwd
    foldhalf=2;
    filename=sprintf('%s%d.mat','walk',i);
    walkres=getres(filename,foldhalf,0);
    filename=sprintf('%s%d.mat','run',i);
    runres=getres(filename,foldhalf,0);
    filename=sprintf('%s%d.mat','play',i);
    playres=getres(filename,foldhalf,0);
    filename=sprintf('%s%d.mat','jump',i);
    jumpres=getres(filename,foldhalf,0);
    filename=sprintf('%s%d.mat','situp',i);
    situpres=getres(filename,foldhalf,0);
    filename=sprintf('%s%d.mat','shake',i);
    shakeres=getres(filename,foldhalf,1);
    filename=sprintf('%s%d.mat','shoulderhit',i);
    shoulderhitres=getres(filename,foldhalf,1);
    filename=sprintf('%s%d.mat','push',i);
    pushres=getres(filename,foldhalf,1);
    averageres2=mean([walkres,runres,playres,jumpres,situpres,shakeres,shoulderhitres,pushres]);
    
    averageres=mean([averageres1,averageres2])
end
