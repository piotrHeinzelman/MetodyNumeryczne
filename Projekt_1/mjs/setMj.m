function setMj( Mjmode )
global CFG Mj
% CFG(1,7)=Mjmode;

    if Mjmode==0 || Mjmode=="0.8"
        Mj = str2func(func2str(@Mj0));
        CFG(1,7)=Mjmode;
    elseif Mjmode==6 || Mjmode=="crazy"
        Mj = str2func(func2str(@Mj6));
        CFG(1,7)=Mjmode;
    else
        setMj( (CFG(1,7)) );
    end

 end 