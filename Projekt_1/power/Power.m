function pow = Power(Y, type)
global CFG

R1=CFG(1,3); 
R2=CFG(2,3); 
h=CFG(2,2);
s1=0;
s2=0;

for i=1:length(Y)
   Y(3,i)=Y(1,i)^2;
   Y(4,i)=Y(2,i)^2;
end
t = CFG(1,2):CFG(2,2):CFG(3,2);
%plot( t, Y(1,:), ":" , t, Y(2,:) , ":",t, Y(3,:) , "-" ,t, Y(4,:) , "-" );

    if ( type==1 )
        s1 = calkaProstokat ( Y(3,:) );
        s2 = calkaProstokat ( Y(4,:) );
        pow=(s1*R1+s2*R2)*h;
    else
        s3 = calkaParabol ( Y(3,:) );
        s4 = calkaParabol ( Y(4,:) );
        pow=(s3*R1+s4*R2)*h;
    end   




    function  value=calkaProstokat ( Y )
    S=0;
    for k=1:length(Y)-1
        S=S+Y(k);
    end    
    value=S;
    end

    function  value=calkaParabol ( Y )
    S2=0;
    len=length(Y);
    le=len/2;
    for j=1:le-1
        S2=S2+(( Y(2*j) + 4*(Y(1+2*j)) + Y(2+2*j))/3);
    end    
    value=S2;
    end

end