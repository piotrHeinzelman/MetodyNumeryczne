% U - 


function u = e(t)
global systemParams Emode UGenType h; 

    if ( UGenType(1)==0 )
         u=(UGenType(2))*sin(t*UGenType(3));    % <- SINUS

    elseif  UGenType(1)==-1
         u=(UGenType(2));           % <- constans

    else    % rectangle
         u=bitand ( round((t/(h*UGenType(1)))) , UGenType(2) );
    end
end   