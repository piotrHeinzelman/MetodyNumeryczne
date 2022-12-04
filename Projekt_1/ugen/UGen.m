function UGen() 
    global CFG uGen
    row=CFG(:,6);
    h=CFG(2,2);
    if     ( row(1)== -1 ) uGen = @(t) row(2); 
    elseif ( row(1)==  0 ) uGen = @(t) (row(2))*sin(t*row(3));   
    else                   uGen = @(t) (bitand(round(1023*sin((((t-.714)*3.1415)/3)+0)^2),512))*(row(2)/512);
    end    
end