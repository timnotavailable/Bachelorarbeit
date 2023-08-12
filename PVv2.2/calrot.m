function invr=calrot(accx,accy,accz)
% calculate rotation of the 3 axes
% Rx=[1 0 0;0 cos(a) sin(a);0 -sin(a) cos(a)]
% Ry=[cos(b) 0 -sin(b);0 1 0;sin(b) 0 cos(b)]
% Rz=[cos(c) sin(c) 0;-sin(c) cos(c) 0;0 0 1]
% newxyz=[0.207326491;0.970683663;0.145783584]
% orixyz=[0;1.003226745;0]
% newxyz = Rz*Ry*Rx*orixyz = R*orixyz
% orixyz = inv(R)*newxyz
% solve('[0.207326491;0.970683663;0.145783584]-[1 0 0;0 cosa (1-cosa^2)^0.5;0 -(1-cosa^2)^0.5 cosa]*[cosb 0 -(1-cosb^2)^0.5;0 1 0;(1-cosb^2)^0.5 0 cosb]*[cosc (1-cosc^2)^0.5 0;-(1-cosc^2)^0.5 cosc 0;0 0 1]*[0;1.003226745;0]','cosa','cosb','cosc')
syms a b c;
f123=[accx;accy;accz]-[1 0 0;0 cos(a) sin(a);0 -sin(a) cos(a)]*[cos(b) 0 -sin(b);0 1 0;sin(b) 0 cos(b)]*[cos(c) sin(c) 0;-sin(c) cos(c) 0;0 0 1]*[0;(accx^2+accy^2+accz^2)^0.5;0];
f1=f123(1);
f2=f123(2);
f3=f123(3);
% f1=1867431015223265/9007199254740992 - (1129532898737529*cos(c)*sin(a)*sin(b))/1125899906842624 - (1129532898737529*cos(a)*sin(c))/1125899906842624;
% f2=(1129532898737529*sin(a)*sin(b)*sin(c))/1125899906842624 - (1129532898737529*cos(a)*cos(c))/1125899906842624 + 1092892645745357/1125899906842624;
% f3=(1129532898737529*cos(b)*sin(a))/1125899906842624 + 5252407156633083/36028797018963968;
% a=[0:0.01:pi/2];
% b=[0:0.01:pi/2];
% c=[0:0.01:pi/2];
minf1=0.2;
minf2=0.2;
minf3=0.2;
for aa=0:0.01:pi/2
    for bb=0:0.01:pi/2
        for cc=0:0.01:pi/2
%             f1=1867431015223265/9007199254740992 - (1129532898737529*cos(c)*sin(a)*sin(b))/1125899906842624 - (1129532898737529*cos(a)*sin(c))/1125899906842624;
%             f2=(1129532898737529*sin(a)*sin(b)*sin(c))/1125899906842624 - (1129532898737529*cos(a)*cos(c))/1125899906842624 + 1092892645745357/1125899906842624;
%             f3=(1129532898737529*cos(b)*sin(a))/1125899906842624 + 5252407156633083/36028797018963968;
            ff1=subs(f1,{a,b,c},{aa,bb,cc});
            ff2=subs(f2,{a,b,c},{aa,bb,cc});
            ff3=subs(f3,{a,b,c},{aa,bb,cc});
            if (abs(ff1)+abs(ff2)+abs(ff3))<(abs(minf1)+abs(minf2)+abs(minf3))
            %if abs(f1)<abs(minf1) && abs(f2)<abs(minf2) && abs(f3)<abs(minf3)
                minf1=ff1;
                minf2=ff2;
                minf3=ff3;
                mina=aa;
                minb=bb;
                minc=cc;
            end;
        end;
    end;
end;
% minf1=minf1;
% minf2=minf2;
% minf3=minf3;
% aa=mina;
% bb=minb;
% cc=minc;
r=[1 0 0;0 cos(mina) sin(mina);0 -sin(mina) cos(mina)]*[cos(minb) 0 -sin(minb);0 1 0;sin(minb) 0 cos(minb)]*[cos(minc) sin(minc) 0;-sin(minc) cos(minc) 0;0 0 1];
invr=inv(r);                