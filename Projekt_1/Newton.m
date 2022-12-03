function c = Newton(F0)

deltaX=1e-4;
t=0:deltaX:30;

    %  roznica:0.0051098 : deltaX6.1035e-05 % obliczam deltaX dla ktorego pochodna deltaX/2 rozni się maksymalnie o 1%
        if (false)
        x=1/4;
        deltaX=1;
        t=0:1e-5:30;
        y=Px(x,t);
        yPrim_minus1=0;
    
            for i=1:40
                deltaX=deltaX/2;
                yNext=Px(x+deltaX,t );
                yPrim=(yNext-y)/deltaX;
                roznica=( yPrim_minus1-yPrim )/yPrim;
                y=yNext;
                a=roznica
                    if (roznica*roznica<0.01*0.01)
                        info = "roznica:" + roznica + " : deltaX" + deltaX
                    end
                yPrim_minus1=yPrim;
            end
        end
    %}

    i=0;
for i=0:15    
    x=F0;


    Pi=Px(x ,t);
    Fi=Pi-406;
Pprimi=Px(x+deltaX , t);
Fprimi=Pprimi-406;
dFSdf =(Fprimi-Fi)/deltaX;

F0=F0-Fi/dFSdf;
i=i+1; 
info="i: " + i + "F0: " + F0 + ", Fi: " +Fi + " Pi: " + Pi
c=F0
end



















    function y=Px(x ,t)
     config( 6, [ 0, 100, 2*3.15*x ]);
     UGen(); 
     Y = Euler( t );
     y=Power(Y,0);
    end




end




% F(x), F'(x), F''(x)
%function yPrimPrim = PIIx(y , x)
%    yPrimPrim = PIx(y, x)
%end

function yPrim = PIx(PxODx, x)
        %y=Pow(x);
        yPrim=(Px(x+deltaX)-PxODx)/deltaX;
end



 

 