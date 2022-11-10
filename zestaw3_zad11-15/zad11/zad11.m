x=1:4;
for i=1:4 
    x(i)=sum( getTK(i))
end
plot((1:4),x,"o");

function result = sum( ARY )
    a=-2;  b=3;
    result=0;
    len=length( ARY(1,:) );
    for i=1:len
        Tk=ARY(1,i);
        F = f( (b-a)*Tk/2 + .5 );
        result = result + ARY(2,i)*F;
    end
    
    result=result*(b-a)/2;
end

function Tk = getTK( r )

TkAry= [-0.577350 , -1        , -1
        -0.774597 ,  0        , -1
        -0.861136 , -0.339981 , -1
        -0.906180 , -0.538469 , 0 ];

AkAry = [ 1   ,   -1     , -1
        5/9   ,   8/9    , -1
     0.347855 , 0.652145 , -1
     0.236927 , 0.478629 , 0.568889 ];
    
    Tk = (-(r+1)*.9/2):1:((r+1)*.9/2);
    len = length(Tk);
    row = TkAry(r,:);
    for i=1:len/1.4
        Tk(1,0+i)     =    row(i);
        Tk(1,end+1-i) = -1*row(i);
        Tk(2,0+i)     =  AkAry(r,i);
        Tk(2,end+1-i) =  AkAry(r,i);
    end    
end

function y = f( x )
   y =  exp(-.25*x);
end