function newarr=reord(arr)

% function reord(arr)
% reorder an array,even numbers are in front, and odd numbers are in rare

for i=2:2:length(arr)/2
    tmp=arr(i);
    arr(i)=arr(length(arr)-i+1);
    arr(length(arr)-i+1)=tmp;
end;
newarr=arr;
