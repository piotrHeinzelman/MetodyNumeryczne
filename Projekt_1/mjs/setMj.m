function setMj( name )
global CFG Mj
% CFG(1,7)=Mjmode;

    switch name
        case "const"
            set_Mj( 0 );
        case "inter"
            set_Mj(1 );
        case "sklejana"
            set_Mj( 2 );
        case "ap3st"
            set_Mj( 3 );
        case "ap5st"
            set_Mj( 4 ); 
        case "crazy"
            set_Mj( 5 );     
    end        
 end 