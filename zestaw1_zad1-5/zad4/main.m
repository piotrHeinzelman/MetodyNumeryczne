
  
 
aryX = [ -1.5 -0.75, 0.0, 0.75, 1.5 ];
aryY = [  3, 5, 6, 8, 9 ];

plot( aryX, aryY , "bo");
hold on


  
  
x = (-1.5:.01:1.5);
y=x;
for i=1:300
    y(i) = caclulate( x(i), aryX, aryY );
end

plot( x , y  , "r-");


function [y] = caclulate(x , aryX, aryY )
   y = caclulate0(x , aryX, aryY );
   y = y+caclulate1(x , aryX, aryY );
   y = y+caclulate2(x , aryX, aryY );
   y = y+caclulate3(x , aryX, aryY );
   y = y+caclulate4(x , aryX, aryY );
end   


function [y] = caclulate0(x , aryX, aryY )
   y = aryY(1);
   %y=y*(x-aryX(1));
   y=y*(x-aryX(2));
   y=y*(x-aryX(3));
   y=y*(x-aryX(4));
   y=y*(x-aryX(5));
   xn=aryX(1);
   %y=y/(xn-aryX(1)); 
   y=y/(xn-aryX(2));
   y=y/(xn-aryX(3));
   y=y/(xn-aryX(4));
   y=y/(xn-aryX(5));
end

function [y] = caclulate1(x , aryX, aryY )
   y = aryY(2);
   y=y*(x-aryX(1));
   %y=y*(x-aryX(2));
   y=y*(x-aryX(3));
   y=y*(x-aryX(4));
   y=y*(x-aryX(5));   
   xn=aryX(2);
   y=y/(xn-aryX(1)); 
   %y=y/(xn-aryX(2));
   y=y/(xn-aryX(3));
   y=y/(xn-aryX(4));
   y=y/(xn-aryX(5));   
end

function [y] = caclulate2(x , aryX, aryY )
   y = aryY(3);
   y=y*(x-aryX(1));
   y=y*(x-aryX(2));
   %y=y*(x-aryX(3));
   y=y*(x-aryX(4));
   y=y*(x-aryX(5));   
   xn=aryX(3);
   y=y/(xn-aryX(1)); 
   y=y/(xn-aryX(2));
   %y=y/(xn-aryX(3));
   y=y/(xn-aryX(4));
   y=y/(xn-aryX(5));   
end

function [y] = caclulate3(x , aryX, aryY )
   y = aryY(4);
   y=y*(x-aryX(1));
   y=y*(x-aryX(2));
   y=y*(x-aryX(3));
   %y=y*(x-aryX(4));
   y=y*(x-aryX(5));   
   xn=aryX(4);
   y=y/(xn-aryX(1)); 
   y=y/(xn-aryX(2));
   y=y/(xn-aryX(3));
   %y=y/(xn-aryX(4));
   y=y/(xn-aryX(5));   
end

function [y] = caclulate4(x , aryX, aryY )
   y = aryY(4);
   y=y*(x-aryX(1));
   y=y*(x-aryX(2));
   y=y*(x-aryX(3));
   y=y*(x-aryX(4));
   %y=y*(x-aryX(5));   
   xn=aryX(5);
   y=y/(xn-aryX(1)); 
   y=y/(xn-aryX(2));
   y=y/(xn-aryX(3));
   y=y/(xn-aryX(4));
   %y=y/(xn-aryX(5));   
end





