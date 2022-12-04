function set_Mj( Mjmode )
global CFG Mj
 
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
    else
        Mj = str2func(func2str(@Mj5));
        CFG(1,7)=Mjmode;    
    end

 end 