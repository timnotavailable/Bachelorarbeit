walk1=transmit('achtwalk','allfeature');
walk2=transmit('dreizehnwalk','allfeature');
walk3=transmit('einwalk','allfeature');
walk4=transmit('elfwalk','allfeature');
walk5=transmit('funfwalk','allfeature');
walk6=transmit('sechswalk','allfeature');
walk7=transmit('vierwalk','allfeature');
walk8=transmit('vierzehnwalk','allfeature');
walk9=transmit('zweiwalk','allfeature');
walkall=[walk1;walk2;walk3;walk4;walk5;walk6;walk7;walk8;walk9];
save('walkall.mat','walkall')