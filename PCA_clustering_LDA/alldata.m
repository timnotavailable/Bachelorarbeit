walk=transmit('walkall.mat','walkall');
stand=transmit('standall.mat','standall');
shoulderhit=transmit('shoulderhitall.mat','shoulderhitall');
run=transmit('runall.mat','runall');
pushdown=transmit('pushdownall.mat','pushdownall');
push=transmit('pushallh.mat','pushall');
play=transmit('playall.mat','playall');
jump=transmit('jumpall.mat','jumpall');
beatandshake=transmit('beatandshakeall.mat','beatandshakeall');
together=[walk;stand;play;jump;run;pushdown;push;beatandshake;shoulderhit;];
%%jiangwei
[coeff,score,latent]=pca(together);
latent=cumsum(latent)./sum(latent);
latent
transmat=coeff(:,1:15);
afterpca=together*transmat;
afterpca=[afterpca(1:40,:);afterpca(42:71,:);afterpca(73:79,:)];
for i=1:15
    afterpca(:,i)=afterpca(:,i)./max(abs(afterpca(:,i)));
end
aaa=size([walk;stand;play;jump;run],1)-1;
safelabel=ones(aaa,2);safelabel(:,2)=safelabel(:,2)-1;
violentlabel=ones(77-aaa,2);violentlabel(:,1)=violentlabel(:,1)-1
label=cat(1,safelabel,violentlabel);
NET=knn(15,2,3,afterpca,label);
%%test
[y,l]=knnfwd(NET,afterpca(1:77,:))
%%SVM降维
training_label=ones(78,1)
training_label=cat(1,training_label(1:aaa,:),training_label(aaa+1:77,:)+1)
training_label = double(training_label);
afterpca=double(afterpca);
model=svmtrain(training_label,afterpca);
predictcents=svmpredict(training_label,afterpca,model)
%%高斯聚类算法
gmmmodel=gmm(15,2,'spherical')
options = foptions; 
options(14) = 9; % A single iteration
options(1) = -1; % Switch off all messages, including warning
gmmmodel=gmmem(gmmmodel,afterpca,options)
getresult=gmmpost(gmmmodel,afterpca);


