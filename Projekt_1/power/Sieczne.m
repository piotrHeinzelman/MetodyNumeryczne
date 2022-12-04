function c = Sieczne(x0,x1)

    rot=1;
    %deltaX=1e-4;
    %poniewaz 2 pochodna i funkcja mają znak ten sam (ujemny) po prawej stronie pierwiastka obieram: X0=.7 X1=1        
         %FPx0=Fprim(x0)
         %FPx1=Fprim(x1);
   %      FPPx0=Fprimprim(x0)
   %      FPPx1=Fprimprim(x1)
   %    info="x0: " + x0 + ", F(x0): " + Fx0 + ", x1: "+ x1 + ", F(x1): " +Fx1 + ", F'(x0): "+FPx0+", F''(x0): "+FPPx0 +", F'(x1): "+FPx1+", F''(x1): "+FPPx1 
        
        Fx0=Fx(x0);  
         for j=1:7  
             Fx1=Fx(x1);
             dx=Fx1*(x1-x0)/(Fx1-Fx0);
             x2=x1-dx;
                info = "x0: " +x0 + ":" + Fx0 + ", x1: "+ x1 +":"+ Fx1 + ", x2: "+ x2 + ", Fx(x2) " + Fx(x2) + "obliczen: " + rot
             Fx0=Fx(x1);
             x0=x1;
             x1=x2;
        end
        c=x2;





    function y=Fx(x)
     rot=rot+1;
     t=0:1e-4:30;
     config( 6, [ 0, 100, 2*3.15*x ]);
     UGen(); 
     Y = Euler( t );
     y=Power(Y,0);
     y=y;
    end



    function y=Fprimprim(x)
        x_0=Fprim(x);
        x_1=Fprim(x+deltaX);
        y=(x_1-x_0)/deltaX;
    end

    function y=Fprim(x)
        x__0=Fx(x);
        x__1=Fx(x+deltaX);
        y=(x__1-x__0)/deltaX;
    end

end
 