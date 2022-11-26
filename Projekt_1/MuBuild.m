function MuBuild()
    global CFG Mu
    row=CFG(:,7);
    switch(row(1))
        case 0
        str = horzcat("@(u) 0+", row(2));  
        case 1
        str = "@(u) 0.337534516765287+u*(0.00545792899408279+u*(5.21966907736125e-05+u*(-1.05465592811740e-06+u*(5.75208196361954e-09+u*(-1.78522463291645e-11+u*(3.61385053692621e-14+u*(-3.46263423186378e-17)))))));";     
        case 2   
        str = func2str ( @b_sklejana );
        case 3
        str = "@(u) 0.47852+u*0.003437+u*u*-0.000015926368;";                
        case 4 
        str = "@(u) 0.270529360498919+u*(0.0102965513204268+u*(-5.28805197847902e-05+u*(-2.89019332648018e-08+u*(2.92192106012333e-10)))) ";     
    end
    Mu = str2func(join(str));
end   




function y = b_sklejana(u)
    X = [ 0, 20, 50, 100, 150, 200, 250, 280, 300   ]; 
    Y = [ .2 , 0.46 , 0.64 , 0.78 , 0.68 , 0.44 , 0.23 , 0.18 , 0.18  ];
    y=0;
    if (u>=X(1)) 
        if (u<=X(end))
        for i=1:length(X)-1
            if  ( u<=X( i+1 ))
                xx=u-X(i);
                H=(Y(i+1))-(Y(i)); 
                W=(X(i+1))-(X(i)); 
                y=Y(i)+(xx*H)/W; 
                return
            end 
        end    
        end
    end
end