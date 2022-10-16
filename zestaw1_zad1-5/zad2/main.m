

 
% data
C = 1.1;  deltaC = 0.055; c = [1.1-1 ,0 , 1.1];
R = 1; deltaR = 0.01;    r = [1-1 , 0 , 1];
I = 1.2; deltaI = 0.012;  i = [ 1.2-1 , 0 , 1.2 ]; 

P = ( R*R*I*I ) / ( C + R );

%C-4  = -3.6
Pc = dFdX( P , "C", C-4 , C ); %( R*R*I*I ) / ( c + R );
Pr = dFdX( P , "R", R-4 , R ); %Pr = ( r*r*I*I ) / ( C + r );
Pi = dFdX( P , "I", (I-4) , I ); %Pi = ( R*R*i*i ) / ( C + R );
 
Pc=abs(1*Pc);
Pr=abs(1*Pr);
Pi=abs(1*Pi);

deltaF = Pc*deltaC + Pr*deltaR + Pi*deltaI;
disp("Blad bezwzgledny: " + deltaF);
disp("Blad wzgledny: " + deltaF/abs(P));








