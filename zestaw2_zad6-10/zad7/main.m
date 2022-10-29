
clear all;
hold on;

% f(x) = 1/(e^(-x))
delta=1;
a=-5;
b= 5;
len=(b-a/delta)+1;
Xi=zeros(len,1);
Yi=zeros(len,1);

for i=1:len
    Xi(i,1)=a+(i-1)*delta;
    Yi(i,1) = fx(Xi(i));
    xline(Xi(i),':b');
end    
 

 
for i=1:length(Xi)
    plot(Xi,Yi,"-r");
end





R = zeros(len,4);
for i=1:len
    R(i,:) = row(Xi(i));
end

Rt = R';
RtR = Rt * R;

MtY = Rt*Yi;

detRtR = det(RtR);

RTRtmp = RtR;
RTRtmp(:,1)=MtY;
a0 = (det(RTRtmp))/detRtR;

RTRtmp = RtR;
RTRtmp(:,2)=MtY;
a1 = (det(RTRtmp))/detRtR;

RTRtmp = RtR;
RTRtmp(:,3)=MtY;
a2 = (det(RTRtmp))/detRtR;

RTRtmp = RtR;
RTRtmp(:,4)=MtY;
a3 = (det(RTRtmp))/detRtR;


xapr = a:0.1:b;
for i=1:length(xapr)
    yapr(i) = faprx( xapr(i) ,a0, a1 , a2, a3);
end    
plot( xapr, yapr , ".g" );



xap = a:delta:b;
for i=1:length(xap)
    yap(i) = faprx( xap(i) ,a0, a1 , a2, a3);
end    
plot(  xap , yap,  "OR" );



for i=1:length(xap)
    roznica(i) = fx( xap(i) ) - faprx( xap(i) ,a0, a1 , a2, a3);
end 

sumaRoznic=0;
for i=1:length(roznica)
    sumaRoznic = sumaRoznic+abs(roznica(i)); 
end 
wynik = sumaRoznic/len;


function [y] = faprx( x ,a0, a1 , a2, a3)
  y = a0+a1*x+a2*x*x+a3*x*x*x;
end


function [y] = fx( x )
  e = 2.7182;
  ee = e^-x;
  y = 1/(1+ee);
end



function [row] = row ( x )
  row = [ 1 , x, x*x , x*x*x ];
end