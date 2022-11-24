%clear all figure; 
Start=[0,0,0]; 
global h; h=1e-3; % 10e-6 perfect, 10e-5 OK, 
t = 0:h:30;
Y=Start';

setSystemParams ( [] ); % [] = default
setEulerMode( 1 );
%setUGeneratorType ( [23.45,128] ); % "sinus"=[0,V,2πf(*t)], "const."=[-1,V], "rectangle"=[x,w][23.45,128] = w:3sek U=128V 
setUGeneratorType ( [0, 240 , 1 ] ); %*3.14*50
setMjMode ( [ 0 , 0.8 ] ); % static 0.8 [H] 




hold on;

for i=1:length(t)-1
        Y(:, i+1) = calkaEuleraW3( t(i) ,  Y(:, i) );  
end

 
hold on;
plot( t, Y(1,:), "-" , t, Y(2,:) , "-",t, Y(3,:) , "-" );

legend ("i1","i2","uc");
% y1=i1
% y2=i2
% y3=uc



