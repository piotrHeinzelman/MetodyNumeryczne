function Y = Euler ( T )
    global CFG uGen Mu   
    Y = CFG(:,1);
    Uc=Y(3); 

R1=CFG(1,3);     % R1=0.1;
R2=CFG(2,3);     % R2=10;
 C=CFG(3,3);     % C=0.5;
L1=CFG(1,4);     % L1=3;
L2=CFG(2,4);     % L2=5;

Emode=CFG(1,5);
h=CFG(2,2);
D1=(L1/(Mu(Uc)))-((Mu(Uc))/L2);
D2=((Mu(Uc))/L1)-(L2/(Mu(Uc)));

    for i=1:length(T)-1
            Y(:, i+1) = stepEuler( T(i) ,  Y(:, i) );  
    end




function dY = stepEuler( t , Y ) % y1=i1  y2=i2   y3=uc

% całkowanie Eulera zwykłe i ulepszone, zaleznie od parametru
     if (Emode==1) % Yn+1=Y+hf( X+h/2 , Y+h/2*(f(X,Y)) ) % ulepszone
        dY = [ ( Y(1) + h*fdy1( t+(h/2), Y+(h/2)*fdy1(t,Y)) )  % nieefektywne - jednak czytelniejsze TU dla celów dydaktycznych OK
               ( Y(2) + h*fdy2( t+(h/2), Y+(h/2)*fdy2(t,Y)) )
               ( Y(3) + h*fdy3( t+(h/2), Y+(h/2)*fdy3(t,Y)) )];
     
     elseif (Emode==2) % Power check
        dY = [ ( 0 )
               ( 0 )
               ( 0 + fd4(t,Y) )];

     else %(Emode==0) % Yn+1=Y+hf(X) % Zwykłe
        dY = [ ( Y(1) + h*fdy1(t,Y) )
               ( Y(2) + h*fdy2(t,Y) )
               ( Y(3) + h*fdy3(t,Y) )];
    end

%Dy1/dt = (1/C)*y2
%Dy2/dt= (1/L)*(E-Ry2-y1)
end


% odseparowane poszczególne obliczenia 
    function dy1 = fdy1(t,Y)
       dy1 =  -Y(1)*(R1/((Mu(Uc))*D1)) + Y(2)*(R2/(L2*D1)) - Y(3)/((Mu(Uc))*D1) + uGen(t)/((Mu(Uc))*D1);
    end

    function dy2 = fdy2(t,Y)
       dy2 = -Y(1)*(R1/(L1*D2)) +Y(2)*(R2/((Mu(Uc))*D2)) - Y(3)/(L1*D2) + uGen(t)/(L1*D2);
    end

    function dy3 = fdy3(t,Y)
       dy3 =  Y(1)*(1/C); 
    end

    function dy4 = fd4 (t,Y)
       dy4 = 0 + uGen(t); 
    end

end 






 