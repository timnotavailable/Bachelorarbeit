function ss=loadfile2mat(name)
s=load(name);
sc=struct2cell(s);
ss=cell2mat(sc);