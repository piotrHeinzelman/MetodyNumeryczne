
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
 


%spline (s)
color = ["g","b","y","c","m"];
for  i=3:3
    splineY = interpol( dataX() , dataY(), aryX , i );
    plot ( aryX, splineY, ""+color(i+1)+":" );
end

%splineY = interpol( dataX() , dataY(), aryX , 4 );
%plot ( aryX, splineY, "r-" );

%points by spline
myY0 = spline( dataX() , dataY(), myX0 );
myY1 = spline( dataX() , dataY(), myX1 );
 
plot ( myX0 , myY0, "ro" );
plot ( myX1 , myY1, "ro" );

xline(myX0,":");
xline(myX1,":"); 
 
text(myX0,myY0-.03,"\uparrow ("+myY0+");" );
text(myX1,myY1-.03,"\uparrow ("+myY1+");" );





