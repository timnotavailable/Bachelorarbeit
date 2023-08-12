function calcorrelation(feature)
% calculate the correlationship of the 8 features
feature
for i=1:8
    if i==feature
        continue
    end
    featurefile=cell2mat(struct2cell(load(sprintf('%s%d.mat','walk',feature))));
    ifile=cell2mat(struct2cell(load(sprintf('%s%d.mat','walk',i))));
    walkor=not(xor(featurefile,ifile));
    walkcor=size(find(walkor),2)/size(walkor,2);
    
    featurefile=cell2mat(struct2cell(load(sprintf('%s%d.mat','jump',feature))));
    ifile=cell2mat(struct2cell(load(sprintf('%s%d.mat','jump',i))));
    jumpor=not(xor(featurefile,ifile));
    jumpcor=size(find(jumpor),2)/size(jumpor,2);
    
    featurefile=cell2mat(struct2cell(load(sprintf('%s%d.mat','run',feature))));
    ifile=cell2mat(struct2cell(load(sprintf('%s%d.mat','run',i))));
    runor=not(xor(featurefile,ifile));
    runcor=size(find(runor),2)/size(runor,2);
    
    featurefile=cell2mat(struct2cell(load(sprintf('%s%d.mat','play',feature))));
    ifile=cell2mat(struct2cell(load(sprintf('%s%d.mat','play',i))));
    playor=not(xor(featurefile,ifile));
    playcor=size(find(playor),2)/size(playor,2);
    
    featurefile=cell2mat(struct2cell(load(sprintf('%s%d.mat','situp',feature))));
    ifile=cell2mat(struct2cell(load(sprintf('%s%d.mat','situp',i))));
    situpor=not(xor(featurefile,ifile));
    situpcor=size(find(situpor),2)/size(situpor,2);
    
    featurefile=cell2mat(struct2cell(load(sprintf('%s%d.mat','push',feature))));
    ifile=cell2mat(struct2cell(load(sprintf('%s%d.mat','push',i))));
    pushor=not(xor(featurefile,ifile));
    pushcor=size(find(pushor),2)/size(pushor,2);
    
    featurefile=cell2mat(struct2cell(load(sprintf('%s%d.mat','shake',feature))));
    ifile=cell2mat(struct2cell(load(sprintf('%s%d.mat','shake',i))));
    shakeor=not(xor(featurefile,ifile));
    shakecor=size(find(shakeor),2)/size(shakeor,2);
    
    featurefile=cell2mat(struct2cell(load(sprintf('%s%d.mat','shoulderhit',feature))));
    ifile=cell2mat(struct2cell(load(sprintf('%s%d.mat','shoulderhit',i))));
    shoulderhitor=not(xor(featurefile,ifile));
    shoulderhitcor=size(find(shoulderhitor),2)/size(shoulderhitor,2);
    
    i
    average_cor=mean([walkcor,jumpcor,runcor,playcor,situpcor,pushcor,shakecor,shoulderhitcor])
end
