function decombinefea(acttype)
% decombine features
% acttype= push, shake, shoulderhit
structres=load(sprintf('%s.mat',acttype));
cellres=struct2cell(structres);
matres=cell2mat(cellres);
for i=1:8
    tmpname=sprintf('%s%d',acttype,i);
    eval([tmpname '=matres(i,:);']);
    filename=sprintf('%s%d.mat',acttype,i);
    save(filename,sprintf('%s%d',acttype,i));
end;
