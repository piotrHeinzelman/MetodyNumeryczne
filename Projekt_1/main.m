Start=[0,0,0];
h=1e-2;
t = 0:h:300;
Y=Start';

for i=1:length(t)-1
        Y(:, i+1) = calkaEuleraW3( t(i) ,     Y(:, i), h , 0, "const.");  % "const.","sinus"
end

 
hold on;
plot( t, Y(1,:), "-" , t, Y(2,:) , "-",t, Y(3,:) , "-" );

legend ("i1","i2","uc");
% y1=i1
% y2=i2
% y3=uc