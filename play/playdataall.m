clear
clc
listplay=dir(['./','*play*.mat'])
for i=1:length(listplay)
    allfeature=['allfeature'];
   temp=['transmit(listplay(i).name',',allfeature)'];
   eval(['a',num2str(i),'=',temp]);
   temp2=['cat(1,']
   if i==1
       alldata=eval([temp2,'a',num2str(i),')']);
   else
       alldata=eval([temp2,'alldata,','a',num2str(i),')']);
   end
end
save('alldataplay.mat','alldata')


    
