function [summ ,index ,value,maxinva] = TriFind(A,thres,first,last)
% TRIFIND find x[k] if x[k-1]<x[k] and x[k]>x[k+1]
%   return all index of x[k] and the numbers of x[k]
% used as:
% [summ ,index ,value,maxinva] = TriFind(A,thres,first,last) or
% [summ ,index ,value,maxinva] = TriFind(A,thres) or
% [summ ,index ,value,maxinva] = TriFind(A)
% This fucntion should be used on filtered data, instead of raw data, 
% and we also need to get the peak's value.
  summ = 0;
  maxinva(1)=0;  % max peak index
  maxinva(2)=0;  % max peak value
  index = 0;
  value = 0;
  if nargin==2
      first=1;
      last=length(A);
  else if nargin==1
          first=1;
          last=length(A);
          thres=0;
      end;
  end;
  for k=first+1:last-1
     if (A(k)>=A(k-1) && A(k)>A(k+1) && A(k)>thres) || (A(k)>A(k-1) && A(k)>=A(k+1) && A(k)>thres)
        summ = summ +1;
        index(summ)=k;
        value(summ)=A(k);
        if A(k)>maxinva(2)
            maxinva(1)=k;
            maxinva(2)=A(k);
        end
     end     
  end