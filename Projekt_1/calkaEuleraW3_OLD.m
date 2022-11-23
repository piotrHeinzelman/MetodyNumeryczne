% y1=i1
% y2=i2
% y3=uc

function dY = calkaEuleraW3_OLD( t, Y )

global systemParams Emode UGenType h;    % dane wejsciowe
R1=systemParams(1);     % R1=0.1;
R2=systemParams(2);     % R2=10;
 C=systemParams(3);     % C=0.5;
L1=systemParams(4);     % L1=3;
L2=systemParams(5);     % L2=5;
 M=systemParams(6);     % M=0.8;

D1=(L1/M)-(M/L2);
D2=(M/L1)-(L2/M);


% U 
function u = e(t)
    if ( UGenType(1)==0 )
         u=(UGenType(2))*sin(t);    % <- SINUS

    elseif  UGenType(1)==-1
         u=(UGenType(2));           % <- constans

    else    % rectangle
         u=bitand ( round((t/(h*UGenType(1)))) , UGenType(2) );
    end
end   

 

% całkowanie Eulera zwykłe i ulepszone, zaleznie od parametru
     if (Emode==1) 
        dY = [ ( Y(1) + h*fdy1(t,Y) )
               ( Y(2) + h*fdy2(t,Y) )
               ( Y(3) + h*fdy3(t,Y) )];
     
     elseif (Emode==0) 
        dY = [ ( Y(1) + h*fdy1(t,Y) )
               ( Y(2) + h*fdy2(t,Y) )
               ( Y(3) + h*fdy3(t,Y) )];

     elseif (Emode==2) % Power check
        dY = [ ( 0 )
               ( 0 )
               ( 0 + fd4(t,Y) )];
    end

%Dy1/dt = (1/C)*y2
%Dy2/dt= (1/L)*(E-Ry2-y1)


    % odseparowane poszczególne obliczenia 
    function dy1 = fdy1(t,Y)
       dy1 =  -Y(1)*(R1/(M*D1)) + Y(2)*(R2/(L2*D1)) - Y(3)/(M*D1) + e(t)/(M*D1);
    end



    function dy2 = fdy2(t,Y)
       dy2 = -Y(1)*(R1/(L1*D2)) +Y(2)*(R2/(M*D2)) - Y(3)/(L1*D2) + e(t)/(L1*D2);
    end


    function dy3 = fdy3(t,Y)
       dy3 =  Y(1)*(1/C); 
    end

    function dy4 = fd4 (t,Y)
       dy4 = 0 + e(t); 
    end
  
end

 






 