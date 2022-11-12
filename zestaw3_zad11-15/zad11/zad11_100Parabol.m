
clear all
a=-2;
b=3;
m=1000;
h=(b-a)/m;

X =-2:h:3;
Y =-2:h:3;

for i=1:length(X)
   Y(i)=f(X(i)); 
end     

%plot(X,Y,"-");

SUM = 0;

for i=0:length(X)-1
    x0=a+h*i;
    x1=x0+h/2;
    x2=x0+h;
    SUM = SUM + fparab( x0, x1, x2, h );
end    

Result = (h/6)*SUM
 
function y = fparab( x0, x1, x2, h )
    y=f(x0)+4*(f(x1))+f(x2);
end

function y = f( x )
    e = 2.71828182845;
    y =  1/(1+e^(-0.25*x));
end