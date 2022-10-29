clear all;
hold on;
hh=.1;
XX = -2:hh:1;
YY = -2:hh:1;

for i=1:length(XX)
    YY(i) = Fx( XX(i));
end    
plot(XX,YY,"-b");

ranges = 6;
h=(1-(-2))/(ranges);
X = -2:h:1;
Y = -2:h:1;

elemSum=0;
for i=1:length(X)-1
    Y(i) = Fxaxb ( X(i), X(i+1));
    val=Y(i);
    elemSum=elemSum+Y(i);
end;   
result = elemSum*h
 


function [y] = Fx( x )
  e = 2.7182; 
  y = e^(x*x);
end


function [y] = Fxaxb ( xa, xb )
  e = 2.7182; 
  %x = xa+0.25;
   
  x = (xa+xb)/2; % 60 podzialow 17.75 srodek przedzialu WolframAplha -> 17.915
                 % 6 podzialow 15.781
  %x=xa; - 19.099 dla podzialu na 60 czesci
  y = e^(x*x);
  xline(x, ':b');
end




