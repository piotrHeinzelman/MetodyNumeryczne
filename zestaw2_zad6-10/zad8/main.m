clear all;

rangeA = [ -3, -0.6 ];
rangeB = [ -0.6, 1.4 ];
rangeC = [ 1.4, 6 ];


CB(1) = bisec( rangeA(1), rangeA(2),1);
CB(2) = bisec( rangeB(1), rangeB(2),1);
CB(3) = bisec( rangeC(1), rangeC(2),1);

rangeA = [ -3, 0.26 ];
rangeB = [ 0.26, 1];
rangeC = [ 1.6, 3.72];  

CN(1)=styczneNewton( rangeA(1), rangeA(2) );
CN(2)=styczneNewton( rangeB(1), rangeB(2) );
CN(3)=styczneNewton( rangeC(1), rangeC(2) );




X=-4:0.05:7;
for i=1:length(X)
    Y(i)=Px(X(i));
end
plot( X, Y, "-b" );
hold on;

title("P(x) = -0.1x^4 + 0.8x³ - 0.6x² -2x +1.5");
xlabel("x");
ylabel("f(x)");
yline(0,"-r");
xline(0,"-r");

plot( CN(1), 0 , "ob");
plot( CN(2), 0 , "ob");
plot( CN(3), 0 , "ob");

%annotation(", sprintf('%.3f', x0) ");
text(CN(1),-5,"\uparrow "+round(CN(1),2)+"" );
text(CN(2),-5,"\uparrow "+round(CN(2),2)+"" );
text(CN(3),-5,"\uparrow "+round(CN(3),2)+"" );






function [c] = styczneNewton( a, b )

test=PIIx( a )*PIx( a );
if (test>0) 
    X(1)=b
else
    X(1)=a;
end
    for i=1:8
        X(i+1)=X(i)-Px(X(i))/PIx(X(i));
    end
c=X(8);

end
 




 




function [c] = bisec(a,b,level)
    level=level+1;
    fa =  Px(a);
    c = (a+b)/2;
    fc = Px(c);
  %  v=[a,fa,c,fc,b];
        if (fa*fc>0)
            a=c;
        else    
        b=c;
    end    
    
    if (level<10)
    c = bisec(a,b,level);
    end
end








% F(x), F'(x), F''(x)
function [ y ] = PIIx(x)
    y= -1.2*x*x + 4.8*x - 1.2;
end

function [ y ] = PIx(x)
    y= -0.4*x*x*x +2.4*x*x - 1.2*x -2;
end

function [ y ] = Px(x)
    y= -0.1*x*x*x*x +0.8*x*x*x - 0.6*x*x -2*x + 1.5;
end




