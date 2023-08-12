jump1=transmit('einjump','allfeature');
jump2=transmit('zweijump','allfeature');
jump3=transmit('dreijump1','allfeature');
jump4=transmit('dreijump2','allfeature');
jump5=transmit('dreijump3','allfeature');
jump6=transmit('dreijump4','allfeature');
jumpall=[jump1;jump2;jump3;jump4;jump5;jump6];
save('jumpall.mat','jumpall')