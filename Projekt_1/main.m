
clear all
global CFG uGen
config(-1,[]);
t = CFG(1,2):CFG(2,2):CFG(3,2);
info="120*sin(t) ";







Y = Euler( t );

%hold on;
plot( t, Y(1,:), "-" , t, Y(2,:) , "-",t, Y(3,:) , "-" ,t, Y(4,:) , ":" );

yline(0,"-");
legend ("i1","i2","uc","Mj(Uc)");
title(info);
% y1=i1
% y2=i2
% y3=uc


