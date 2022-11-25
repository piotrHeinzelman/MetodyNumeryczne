
global CFG Mn UGen
config(-1,[]);
t = CFG(1,2):CFG(2,2):CFG(3,2);
Y = Euler( t );

hold on;
plot( t, Y(1,:), "-" , t, Y(2,:) , "-",t, Y(3,:) , "-" );


legend ("i1","i2","uc");
% y1=i1
% y2=i2
% y3=uc



