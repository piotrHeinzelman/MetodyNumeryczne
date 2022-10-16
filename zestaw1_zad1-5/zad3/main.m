
  
 
aryX = [  0.1,  0.3,  0.6,  0.8 ];
aryY = [ -1.0,  1.2,  1.0,  1.5  ];
len = 4;

FIRow = (1:len-1);

for i=1:len-1
    %disp(i);
    FIRow(i) = ( aryY(i+1)-aryY(i) ) / ( aryX(i+1) - aryX(i) );
end    


for i=2:len-1
    %disp(i);
    ya=FIRow(i);
    yb=FIRow(i-1);
    xa=aryX(i+1);
    xb=aryX(i-1);
    FIIRow(i-1) = ( ya-yb ) / ( xa - xb );
end    


for i=3:len-1
    disp(i);
    ya=FIIRow(i-1);
    yb=FIIRow(i-2);
    xa=aryX(i+1);
    xb=aryX(i-2);
    FIIIRow(i-2) = ( ya-yb ) / ( xa - xb );
end    

x = 0.55; %  szukany X

x_x0 = x-aryX(1);
x_x1 = x-aryX(2);
x_x2 = x-aryX(3);
x_x3 = x-aryX(4);

FY055 = aryY(1) + FIRow(1)*x_x0 + FIIRow(1)*x_x0*x_x1 + FIIIRow(1)*x_x0*x_x1*x_x2;


x = (0.1:.01:.8);
 
title("Wykres");
hold on;

for i=0:70
    plot( x(i+1), calculate(x(i+1)) , "ro");
    hold on;
end

function [y] = calculate( x )
    y = -1 + 11*(x-0.1) -23.22*(x-0.1)*(x-0.3) + 42.34*(x-0.1)*(x-0.3)*(x-0.6);
end

