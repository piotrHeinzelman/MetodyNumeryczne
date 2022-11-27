
clear all
global CFG uGen
config(-1,[]);
t = CFG(1,2):CFG(2,2):CFG(3,2);


if (true)
    info="240*sin(2t) ";
hold on;
%    config( 7, [  0, 0.8,0]);info=info+"Mj(Uj)=0.8[H]";
     config( 7, [  1, 0, 0 ]);info=info+"interpolacja wielomianowa"; 
%    config( 7, [  2, 0, 0 ]);info=info+"interpolację funkcjami sklejanymi "; 
%    config( 7, [  3, 0, 0 ]);info=info+"aproksymację wielomianową stopnia 3";
%    config( 7, [  4, 0, 0 ]);info=info+"aproksymację wielomianową stopnia 5";

UGen(); MuBuild();
end





Y = Euler( t );

%hold on;
plot( t, Y(1,:), "-" , t, Y(2,:) , "-",t, Y(3,:) , "-" ,t, Y(4,:) , ":" );

yline(0,"-");
legend ("i1","i2","uc","Mj(Uc)");
title(info);
% y1=i1
% y2=i2
% y3=uc


