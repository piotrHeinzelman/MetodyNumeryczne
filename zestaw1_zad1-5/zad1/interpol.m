

function [ outY ] = interpol( dataX, dataY, outX , type )

    switch type 
        case 0       
            outY = interp1( dataX, dataY, outX ,"linear" ); 
        case 1
            outY = interp1( dataX, dataY, outX ,"makima");  
        case 2
            outY = interp1( dataX, dataY, outX ,"nearest" ); 
        case 3
            outY = interp1( dataX, dataY, outX ,"cubic" );          
        case 4
            outY = interp1( dataX, dataY, outX ,"spline" );
        case 5
            outY = spline( dataX, dataY, outX );            
    end    
end