
clear all figure;

minY= -.2;
maxY= 1.1;

title("Wykres i(u) [A] ");
xlabel("u [V]");
ylabel("i [A]");

xlim([-1.55 1.55]); % xlimit
ylim([minY maxY]); % ylimit
hold on;

aryX = (-1.52:.01:1.52);

% data
plot ( dataX(),dataY(),"bo");

%myX0, myX1
myX0 = -.9;
myX1 = (2^.5)/2;
 
%interp1
interp1 = interpol( dataX() , dataY(), aryX ,"interp1" );
plot ( aryX, interp1, "r-" );

%spline 
splineY = interpol( dataX() , dataY(), aryX ,"spline" );
plot ( aryX, splineY, "g-" );

%points by spline
myY0 = spline( dataX() , dataY(), myX0 );
myY1 = spline( dataX() , dataY(), myX1 );
 
plot ( myX0 , myY0, "ro" );
plot ( myX1 , myY1, "ro" );

xline(myX0,":");
xline(myX1,":"); 
 
text(myX0,myY0-.03,"\uparrow ("+myY0+");" );
text(myX1,myY1-.03,"\uparrow ("+myY1+");" );





