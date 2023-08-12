shoulderhit1=transmit('zweishoulderhit','allfeature');
shoulderhit2=transmit('vierzehnshoulderhit','allfeature');
shoulderhit3=transmit('elfshoulderhit1','allfeature');
shoulderhit4=transmit('elfshoulderhit2','allfeature');
shoulderhit5=transmit('einshoulderhit','allfeature');
shoulderhit6=transmit('dreizehnshoulderhit','allfeature');
shoulderhitall=[shoulderhit1;shoulderhit2;shoulderhit3;shoulderhit4;shoulderhit5;shoulderhit6];
save('shoulderhitall.mat','shoulderhitall')