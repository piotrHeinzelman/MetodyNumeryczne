
clear all
global CFG uGen
config(-1,[]);
t = CFG(1,2):CFG(2,2):CFG(3,2);
info=" sin(t); Mj=0.8 ";





if (false)
config( 6, [   -1,     1,    1   ]); info="1V h=0.01[s]";  UGen(); % "sinus"[0,V,*2πf], "rectangle": [ 2,Vmax,0 ][2,120,0]
Y = Euler( t ); v=[Power(Y,1),Power(Y,0),info]
config( 6, [   2,     120,    1          ]); info="prostokat 120V"; UGen(); 
Y = Euler( t ); v=[Power(Y,1),Power(Y,0),info]
config( 6, [   0,     240,    1          ]); info="240*sin(t)"; UGen(); 
Y = Euler( t ); v=[Power(Y,1),Power(Y,0),info]
config( 6, [   0,     210,    2*3.14*5   ]); info="210*sin(2πωt)f=5[Hz]"; UGen(); 
Y = Euler( t ); v=[Power(Y,1),Power(Y,0),info]
config( 6, [   0,     120,    2*3.14*50  ]); info="120*sin(2πωt)f=50[Hz]"; UGen(); 
Y = Euler( t ); v=[Power(Y,1),Power(Y,0),info]
return
end


if (true)
    %Pow(1/2);
    %Pow(1);
    %  xx=bisekcja(1/2, 1, 1)
    %  
    %xx=Newton(1/2); %w stronę 1
    %xx=Sieczne(.8 ,1);
    Pow( 0.67133 )
    %ans
end    

return

%Y = Euler( t );
%z=Power(Y,-1)
%hold on;
%plot( t, Y(1,:), "-" , t, Y(2,:) , "-",t, Y(3,:) , "-" ,t, Y(4,:) , ":" );
%yline(0,"-");
%legend ("i1","i2","i1^2","i2^2");
%title(info);
% y1=i1
% y2=i2
% y3=uc