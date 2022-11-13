

X = -5:1:5;
XX= -5:.01:5;
for i=1:length(X)
 Y(i) = f(X(i));
end
for i=1:length(XX)
 YY(i) = f(XX(i));
end
for i=1:length(pierwiastki)
 YYY(i) = 0;
end 



hold on;
plot (X,Y,"o",XX,YY,"-",pierwiastki,YYY,"o");

for i=1:length(pierwiastki);
xline(pierwiastki(i),":b");
end
yline(0);



global pierwiastki
pierwiastki=[-5]; 

for i=1:length(X)-1
  A=[ X(i)
      X(i+1)];
  o=czyZmiana(A);
  if (o==1)
      znajdz(A);
  end
end



function y = f(x)
    y = 1/5 +(1/20)*x + 1/(1+exp(-2*(x-1))) - 1/(1+exp(-3*x));
end


function out = czyZmiana(A)

  if  f(A(1))*f(A(2))>0 
     out=0;
  else 
     out=1;
  end    
end


function znajdz(A)
    for i=1:20
       A = bisekcja(A);
    end
    global pierwiastki
    pierwiastki( length(pierwiastki)+1 ) = A(1);
end


function Aout = bisekcja(A)
  C = (A(1)+A(2))/2;
  if (f(A(1))*f(C) > 0 )
      Aout = [ C
               A(2) ]
  else
     Aout = [ A(1) 
              C ]
  end    
end