function setMj( Mjmode , name )
global CFG Mj
% CFG(1,7)=Mjmode;

    switch name
        case "const"
            Mjmode=0;
        case "inter"
            Mjmode=1;
        case "sklejana"
            Mjmode=2;
        case "ap3st"
            Mjmode=3;
        case "ap5st"
            Mjmode=4;       
        case "crazy"
            Mjmode=5;
    end        

    if Mjmode==0 
        Mj = str2func(func2str(@Mj0));
        CFG(1,7)=Mjmode;
    elseif Mjmode==1 
        Mj = str2func(func2str(@Mj1));
        CFG(1,7)=Mjmode;
    elseif Mjmode==2 
        Mj = str2func(func2str(@Mj2));
        CFG(1,7)=Mjmode;
    elseif Mjmode==3 
        Mj = str2func(func2str(@Mj3));
        CFG(1,7)=Mjmode;
    elseif Mjmode==4 
        Mj = str2func(func2str(@Mj4));
        CFG(1,7)=Mjmode;
    elseif Mjmode==5 
        Mj = str2func(func2str(@Mj5));
        CFG(1,7)=Mjmode;        
    else
        setMj( (CFG(1,7)) );
    end

 end 