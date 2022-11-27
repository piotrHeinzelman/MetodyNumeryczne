function Y = Euler ( T )
    global CFG uGen  D1 D2 Uc 
    Y = [0,0,0,0]';
    %Y=CFG(:,1);

R1=CFG(1,3);     % R1=0.1;
R2=CFG(2,3);     % R2=10;
 C=CFG(3,3);     % C=0.5;
L1=CFG(1,4);     % L1=3;
L2=CFG(2,4);     % L2=5;

Emode=CFG(1,5);
h=CFG(2,2);


    for i=1:length(T)-1
            Y(:, i+1) = stepEuler( T(i) ,  Y(:, i) );  
    end




function dY = stepEuler( t , Y ) % y1=i1  y2=i2   y3=uc
    Uc=Y(3); 
    D1=(L1/(Mu(Y(3))))-((Mu(Y(3)))/L2);
    D2=((Mu(Y(3)))/L1)-(L2/(Mu(Y(3))));
% całkowanie Eulera zwykłe i ulepszone, zaleznie od parametru
     if (Emode==1) % Yn+1=Y+hf( X+h/2 , Y+h/2*(f(X,Y)) ) % ulepszone
        dY = [ ( Y(1) + h*fdy1( t+(h/2), Y+(h/2)*fdy1(t,Y)) )  % nieefektywne - jednak czytelniejsze TU dla celów dydaktycznych OK
               ( Y(2) + h*fdy2( t+(h/2), Y+(h/2)*fdy2(t,Y)) )
               ( Y(3) + h*fdy3( t+(h/2), Y+(h/2)*fdy3(t,Y)) ) 
                 Mu(Y(3))*10 ];
     
     elseif (Emode==2) % Power check
        dY = [ ( 0 )
               ( 0 )
               ( uGen(t) )
               (0)];

     elseif (Emode==3) % Mu(Uc) check
        dY = [ ( 0 )
               ( 0 )
               ( Mu(t*10))
               (0)];

     else %(Emode==0) % Yn+1=Y+hf(X) % Zwykłe
        dY = [ ( Y(1) + h*fdy1(t,Y) )
               ( Y(2) + h*fdy2(t,Y) )
               ( Y(3) + h*fdy3(t,Y) )
               (Mu(Y(3))*10) ];
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


    

    
function y = Mu(u)
    y=.8;
    %{
   multi=1; if (u<0) u=-u; multi=-1; end
   if (u>400) y=0.18;
   elseif (u>280)
       y0=0.171013;y1=0.18;
       y=y0+(y1-y0)*((u-280)/(400-280));
   else
   y=0.270529360498919+u*(0.0102965513204268+u*(-5.28805197847902e-05+u*(-2.89019332648018e-08+u*(2.92192106012333e-10))));    
   end    
   y=y*multi;
    %}
end



end 






 