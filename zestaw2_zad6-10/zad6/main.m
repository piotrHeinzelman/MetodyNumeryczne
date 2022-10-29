clear figure;




X = [0.2 , 0.3 , 0.4 , 0.5 , 0.6 , 0.7 , 0.8 ];
Y = [ 0,   0,    1,    1,    0,    0,    0.5 ];

n=6;
h=X(2)-X(1);
l=(n+1)*.5*h;
c=pi/l;

 

a0 = mySum( Y ) /(n+1); % 1/(n+1) * Eyi
a1 = myCosMul( Y, X, c ) * 2/(n+1);
b1 = mySinMul( Y, X, c ) * 2/(n+1);
a2 = myCosMul( Y, X, 2*c ) * 2/(n+1);
b2 = mySinMul( Y, X, 2*c ) * 2/(n+1);




hh = 0.01;
XX = 0:hh:1;
YY = 0:hh:1;
len = length(YY);
for i=1:len
    YY(i) = Fx(XX(i)   ,a0, a1, a2, b1, b2,c);
end

%hold on;
plot(X,Y,"o", XX , YY, "-");






%{
T(x) = a0 + a1*cos(cx) + b1sin(cx) + a2con(2cx) + b2sin(2cx)

n=6
c=pi/l 
h=X(2)-X(1)
l=(n+1)*.5*h



%}

function [y] = Fx(x, a0, a1, a2, b1, b2, c )
%{ Fx }%

    y = ( a0 + a1*cos(c*x) +b1*sin(c*x) + a2*cos(c*2*x) + b2*sin(c*2*x))
    %y = a0 + a1 * cos( c*x ) + b1*sin(c*x );
 
end



function [ result ] = mySum( ary )  
  len = length(ary);
  result=0;
  for i=1:len
      result = result + ary(i);
  end
end


function [ result ] = myCosMul( ary, aryX, mul ) 
  len = length(ary);
  result=0;
  for i=1:len
      one = aryX(i)*mul;
      result = result + ary(i) * cos(one);
  end
end


function [ result ] = mySinMul( ary, aryX, mul ) 
  len = length(ary);
  result=0;
  for i=1:len
      one = aryX(i)*mul;
      result = result + ary(i) * sin(one);
  end
end
