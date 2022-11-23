
function setSystemParams ( ary )
    global systemParams;
    len = length(ary);
        if len==6
            for i=1:6 systemParams(i) = ary(i); end
        else
            systemParams = loadDefaultParams();
        end    
end



function params = loadDefaultParams()

                %  R1   R2    C   L1   L2   M     
    params = [ 0.1,  10,  0.5,  3,  5,  0.8 ];

end
