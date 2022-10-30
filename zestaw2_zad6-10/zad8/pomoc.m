



IIpochA= PIIx(3.72 );
IIpochB= PIIx( 6 );
IpochA= PIx( 3.72 );
IpochB= PIx( 0.26 );

a=3.72;
b=6;
test=PIIx( a )*PIx( a );
if (test>0) 
    X(1)=b
else
    X(1)=a;
end
i=1;
for i=1:8
    X(i+1)=X(i)-Px(X(i))/PIx(X(i));
end




test1(1);
it(1.4, 6);







function [ y ] = PIIx(x)
    y= -1.2*x*x + 4.8*x - 1.2;
end

function [ y ] = PIx(x)
    y= -0.4*x*x*x +2.4*x*x - 1.2*x -2;
end

function [ y ] = Px(x)
    y= -0.1*x*x*x*x +0.8*x*x*x - 0.6*x*x -2*x + 1.5;
end




function  test1(x)
% 2 pochodna 
%{
a=-1.2;
b=4.8;
c=-1.2;
delta=b*b-4*a*c;
pdelta = delta^(1/2);
x1=(-b-pdelta)/(2*a);
x2=(-b+pdelta)/(2*a);
stop=0;
%}
 

end



function  it(a,b)
    fa =  Px(a);
    c = (a+b)/2;
    fc = Px(c);
  %  v=[a,fa,c,fc,b];
        if (fa*fc>0)
            a=c;
        else    
        b=c;
    end    
    
%stop=0;
%    it( a,b );
end


