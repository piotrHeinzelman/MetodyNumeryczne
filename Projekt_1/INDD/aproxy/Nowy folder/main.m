
  
 

aryX = [ 2, 5, 10, 15, 20, 25, 28, 30 ];
aryY = [ 0.46 , 0.64 , 0.78 , 0.68 , 0.44 , 0.23 , 0.18 , 0.18 ];

plot( aryX, aryY , "bo");
hold on


  
  
x = (0:.01:30);
y=x;
for i=1:300
    y(i) = caclulate( x(i), aryX, aryY );
end

plot( x , y  , "r-");



a= -1.5;
b= 1.5;


n=4;
for k=0:5
    xk(k+1) = ((b-a)/2)*cos( pi*((2*k+1) / (2*n+2)) ) +((b+a)/2);
    xline(xk(k+1),":"); 

end
















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





