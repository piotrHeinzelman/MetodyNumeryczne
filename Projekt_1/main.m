Start=[0,0,0];
global h; h=1e-3;
t = 0:h:45;
Y=Start';

setSystemParams ( [] );
setEulerMode( 2 );
setUGeneratorType ( [23.45,128] ); % "sinus"=[0,V], "const."=[-1,V], "rectangle"=[x,w][23.45,128] = w:3sek U=128V 
% ,






for i=1:length(t)-1
        Y(:, i+1) = calkaEuleraW3( t(i) ,  Y(:, i)  );  % "const.","sinus"
end

 
hold on;
plot( t, Y(1,:), "-" , t, Y(2,:) , "-",t, Y(3,:) , "-" );

legend ("i1","i2","uc");
% y1=i1
% y2=i2
% y3=uc