



%C = 1.1;  AC = 0.05; 
%R = 1; AR = 0.02;  
%I = 1.2; AI = 0.01;  
% RRII (1.44);



function [ ddX ] = dFdX ( fx0 , funType , x , x0 )
%myPrecission = 10^-9;


    aryFX = (0:30);
    aryDF = (0:30);
    for i=1:31
        %step
        aryFX(i) = caclulateFx ( x ,  funType );
        aryDF(i) = (aryFX(i)-fx0)/(x-x0);
        x=(x+x0)/2;

        % exit ?
        %if (i>2 && ((aryDF(i-1)-aryDF(i))<myPrecission) ) 
        %    break; 
        %end
    end
    
    %plot ( (0:30) , aryFX , "r-"  ,  (0:30) , aryDF , "g-"  );
    %hold on
    ddX = aryDF(30);

end



function [fx] = caclulateFx ( x ,  funType )

    switch funType
        case "C" 
            fx =  1.44 / ( x + 1 ); % 1*1*1.2*1.2 / x + 1
        case "R"
            k = 1000;
            fx = ( x*x*1.44*k ) / ( 1.1*k + x*k ); % x*x*1.2*1.2 / 1*1 + x
        case "I"
            fx = (x*x)/(2.1); % 1*1*x*x / 1.1+1 
    end
  
end