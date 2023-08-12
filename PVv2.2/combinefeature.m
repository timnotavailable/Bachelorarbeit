function combinefeature(acttype)
% combine all 8 features into one 8XN matrix
% acttype = push, shoulderhit, shake
% matri=NaN;
% cd D:\oulu\PVv2.2\results\10-20141225\fold-2
for i=1:8
    filename=sprintf('%s%d.mat.mat',acttype,i);
    structres=load(filename);
    cellres=struct2cell(structres);
    tmpname=sprintf('%s%d','matr',i);
    eval([tmpname '=cell2mat(cellres);']);
%     matr(i)=cell2mat(cellres);
%     matri=[matri;matr];
end;
matri=[matr1;matr2;matr3;matr4;matr5;matr6;matr7;matr8];
filename=sprintf('%s.mat.mat',acttype);
save(filename,'matri');