pushdown1=transmit('elfpushdown1','allfeature');
pushdown2=transmit('siebenpushdown2','allfeature');
pushdown3=transmit('dreizehnpushdown1','allfeature');
pushdown4=transmit('dreizehnpushdown2','allfeature');
pushdown5=transmit('vierpushdown1','allfeature');
pushdown6=transmit('vierpushdown2','allfeature');
pushdown7=transmit('vierpushdown3','allfeature');
pushdown8=transmit('vierpushdown5','allfeature');
pushdown9=transmit('vierpushdown6','allfeature');
pushdown10=transmit('vierzehnpushdown3','allfeature');
pushdown11=transmit('vierzehnpushdown4','allfeature');
pushdownall=[pushdown1;pushdown2;pushdown3;pushdown4;pushdown5;pushdown6;pushdown7;pushdown8;pushdown9;pushdown10;pushdown11];
save('pushdownall.mat','pushdownall')