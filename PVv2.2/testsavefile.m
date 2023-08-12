function testsavefile(features,savematfile)
a=features
b=sprintf('%s.mat',savematfile)
save(b,'a')