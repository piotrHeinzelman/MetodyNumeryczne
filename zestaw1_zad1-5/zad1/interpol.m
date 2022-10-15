

function [ outY ] = interpol( dataX, dataY, outX , type )

switch type 
    case "spline" 
        outY = spline( dataX, dataY, outX ); 
    case "interp1"
        outY = interp1( dataX, dataY, outX ,"linear" ); 
end    


end