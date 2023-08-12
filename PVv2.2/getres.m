function res=getres(filename,foldhalf,bully)
% analyze classfication result from .mat files
structres=load(filename);
cellres=struct2cell(structres);
matres=cell2mat(cellres);
if foldhalf==1  % for fold-1,i.e. front half as training set and rare half as testing set, foldhalf=1; for fold-2, foldhalf=2;
    matres=matres(size(matres,2)/2:size(matres,2));
else
    matres=matres(1:size(matres,2)/2);
end;
if bully==1 % for shake,push and shoulderhit, bully=1;for others, bully=0;
    res=size(find(matres),2)/size(matres,2);
else
    res=1-size(find(matres),2)/size(matres,2);
end;
