push1=transmit('elfpush','allfeature');
push2=transmit('vierpush1','allfeature');
push3=transmit('vierpush2','allfeature');
push4=transmit('vierzehnpush','allfeature');
push5=transmit('vierzehnpush2','allfeature');
push6=transmit('siebenpush','allfeature');
push7=transmit('sechspush1','allfeature');
push8=transmit('sechspush2','allfeature');
push9=transmit('sechspush3','allfeature');
push10=transmit('sechspush4','allfeature');
push11=transmit('sechspush5','allfeature');
push12=transmit('sechspush6','allfeature');
push13=transmit('sechspush7','allfeature');
pushall=[push1;push2;push3;push4;push5;push6;push7;push8;push9;push10];
save('pushallh.mat','pushall')