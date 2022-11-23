

X=[1,5,9];
Y=[3,1,5];

XX=0:.1:10;
%YY=0:.1:10;
for i=1:length(XX)
    YY(i)=f(XX(i));
end    

hold on;
plot(X,Y,"o");
plot(XX,YY,"-");

function y = f(x)

    y=1.75 + .25*x;

end