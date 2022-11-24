function MuBuild( row )
    global Mu
    if     ( row(1)==0 )  
        str = horzcat("@(u) 0+", row(2));  
    end
    Mu = str2func(join(str));
end   