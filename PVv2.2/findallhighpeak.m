function findallhighpeak(polarr,peakthreshold)
% function findallhighpeak(polarr,peakthreshold)
% find all high peaks for falling/pushing down detection
% peakthreshold >=2

[sum,index_,value_,maxinva_polarr]=TriFind(polarr,peakthreshold);
for i=1:1:sum
    
end;