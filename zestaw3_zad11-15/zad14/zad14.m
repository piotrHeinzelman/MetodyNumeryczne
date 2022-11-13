
clear all
h=0.1;
t = 0:h:5;
Y=[ 2
   -3 ];

for i=1:length(t)-1
    Y(:, i+1) = Y(:, i)+h*f( t(i) , Y(:,i));
end    

plot(t,Y(1,:), t ,Y(2,:));
plot(t,Y(1,:), t ,Y(2,:));
legend("y1","y2");

 


function dy = f(t,y)
    dy = [ y(2) 
     (  4-0.5*y(1) +0.4*y(2))];
end