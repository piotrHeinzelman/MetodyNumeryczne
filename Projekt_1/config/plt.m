function plt()
    global CFG
    imageNumber = CFG(1,8);
    imageNumber = imageNumber+1;
    CFG(1,8) = imageNumber; 
    imageSection= CFG(2,8);

    t = CFG(1,2):CFG(2,2):CFG(3,2);    
    Y = Euler( t ); 

    hold off;
    tl = tiledlayout("flow");

    nexttile;
    plot(t,Y,"-");

     
    info="";
    if ((CFG(1,5))<2) 
        legend("i1","i2","Uc");
        if (CFG(1,6))==0 
            info = "u(t)=" +(CFG(2,6))+ "*sin(2πft); f="+ceil((CFG(3,6))/2*3.14);
        elseif (CFG(1,6))==-1
            info = "u(t)=" +(CFG(2,6))+ "[V]";
        else
            info = "u(t)=prostokat";
        end    
    end    
    if CFG(1,5)==0 eul="normalna" else eul="ulepszona" end
    title(info + ", Eul: "+eul + ", M:"+(CFG(1,7)) );
    exportgraphics(tl, "INDD/links/" + imageNumber + "_" + imageSection + "_img_.png",'Resolution',600);
    clear plt
end