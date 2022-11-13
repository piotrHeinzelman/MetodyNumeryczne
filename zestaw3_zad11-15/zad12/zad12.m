
clear all;
a=0;
b=1;
h1=0.5;
h2=0.25;

% podział na 2
X = a:h1:b;
Y = a:h1:b;
h=h1;


%licz dla 2
X(1)=0;
Y(1)=2;
for i=1:length(X)-1
    Y(i+1) = Y(i) + h*(f(X(i),Y(i)));
end   

hold on;
plot(X,Y,"o-b");
title("y'=-0.3y");
xlabel("xi");
ylabel("yi");

Z=[X',Y']


%podział na 4
X = a:h2:b;
Y = a:h2:b;
Z = a:h2:b;
h=h2;

%licz dla 4
X(1)=0;
Y(1)=2;
for i=1:length(X)-1
    Y(i+1) = Y(i) + h*(f(X(i),Y(i)));
end    
hold on;
plot(X,Y,"o-b");
title("y'=-0.3y");
xlabel("xi");
ylabel("yi");

Z=[X',Y']



function y = f(xn,yn)
   y = -0.3*yn;
end