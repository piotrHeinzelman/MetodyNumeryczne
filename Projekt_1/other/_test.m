
global SETTINGS;
global myFun1;
global myFun2;
global myFun3;
global myFun4;

A = [1,2,3];
B = [0,123,0];
C = [123,132,"a"];
SETTINGS=[ A',B',C' ];


x=SETTINGS(2,2);

for i=1:3
    if ( i==1 )
        myFun1 = @(x) x+1;
        %myFun1 = ( y = f(x) y=x+2 );
    elseif ( i==2 )
        myFun1 = @(x) x+2;
    else 
        myFun1 = @(x) x+3;
    end  
  myFun1(0)  
end   
    

%{
function setFU( mode )
    if     (mode==0)
        fu = ( function y=(x)
                y=0;
               end )
    elseif (mode==1)    
        %
    else   (mode==2)    
        %
    end    
end
%} 
 
