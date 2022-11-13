
clear all;
a=0;
b=1;
h1=0.5;
h2=0.25;
 

% podział na 2
X1 = [0
      2];
for i=1:2
 X1(:,i+1) = f1( X1(:,i) , h1 );
end  


% podział na 4
X2 = [0
      2];
for i=1:4
 X2(:,i+1) = f1( X2(:,i) , h2 );
end  


hold on;
plot(X1(1,:),X1(2,:),"o-b",X2(1,:),X2(2,:),"o-g"); 
%plot(X1(1,:),X1(2,:),"or");
title("y'=-0.3y");
xlabel("xi");
ylabel("yi");

Z=X1'
Z=X2'

test = [0
      2]; 
next_xiyi = f1( test )


 


function next_xiyi = f1( xiyi , h )

    xi=xiyi(1);
    yi=xiyi(2);
    x_i = xi+h/2;
    y_i = yi+(h/2)*f(xi,yi);
    ynexti=yi+h*(f( x_i , y_i ));

    next_xiyi = [
        xi+h
        ynexti
    ]
    
end



function y = f(xn,yn)
   y = -0.3*yn;
end