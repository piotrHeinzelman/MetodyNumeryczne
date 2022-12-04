clear all image
XXX = [ 20, 50, 100, 150, 200, 250, 280, 300];
YYY = [ 0.46 , 0.64 , 0.78 , 0.68 , 0.44 , 0.23 , 0.18 ,0.18 ];


X = -900:1:900;
len=length(X);
Mj = str2func(func2str(@Mj4));
for i=1:len
    Y(i)=Mj(X(i));
end


hold on;
plot(XXX,YYY,"o");
plot(X,Y,"-");
title("Mj4 - aproksymacja wielomanem 5 st. -900, 900");

