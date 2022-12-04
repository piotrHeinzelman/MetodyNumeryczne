function Y = Euler ( T )
    import mjs.*
    global CFG uGen Mj MjUL D1 D2 e1
    Y=CFG(:,1);

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
    i1=Y(1);
    i2=Y(2);
    Uc=Y(3); 
    e1=uGen(t);
    UL=e1-Uc-(i1*R1);  %UL=e-Uc-i1*R z prawa napięciowego Kirhoffa
    MjUL=Mj(UL);

    D1=(L1/MjUL)-(MjUL/L2);
    D2=(MjUL/L1)-(L2/MjUL);
% całkowanie Eulera zwykłe i ulepszone, zaleznie od parametru
     if (Emode==1) % Yn+1=Y+hf( X+h/2 , Y+h/2*(f(X,Y)) ) % ulepszone
        dY = [ ( i1 + h*fdy1( t+(h/2), Y+(h/2)*fdy1(t,Y)) )  % nieefektywne - jednak czytelniejsze TU dla celów dydaktycznych OK
               ( i2 + h*fdy2( t+(h/2), Y+(h/2)*fdy2(t,Y)) )
               ( Uc + h*fdy3( t+(h/2), Y+(h/2)*fdy3(t,Y)) ) ];
     
     else %(Emode==0) % Yn+1=Y+hf(X) % Zwykłe
        dY = [ ( i1 + h*fdy1(t,Y) )
               ( i2 + h*fdy2(t,Y) )
               ( Uc + h*fdy3(t,Y) )];
     end
end


% odseparowane poszczególne obliczenia 
    function dy1 = fdy1(t,Y)
        i1=Y(1);
        i2=Y(2);
        Uc=Y(3);  

       dy1 =  -i1*(R1/(MjUL*D1)) + i2*(R2/(L2*D1)) - Uc/(MjUL*D1) + e1/(MjUL*D1);
    end

    function dy2 = fdy2(t,Y)
        i1=Y(1);
        i2=Y(2);
        Uc=Y(3);   
        
       dy2 = -i1*(R1/(L1*D2)) +i2*(R2/(MjUL*D2)) - Uc/(L1*D2) + e1/(L1*D2);
    end

    function dy3 = fdy3(t,Y)
        i1=Y(1);
        i2=Y(2);
        Uc=Y(3);   

       dy3 =  i1*(1/C); 
    end
end

 