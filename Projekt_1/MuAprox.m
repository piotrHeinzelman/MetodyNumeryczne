function MuAprox()
XXX = [ 0, 20, 50, 100, 150, 200, 250, 280, 300];
YYY = [ 0, 0.46 , 0.64 , 0.78 , 0.68 , 0.44 , 0.23 , 0.18 ,0.18 ];
vectorA = aproxFun5stVector();   

XX=-XXX(end)*3:1:XXX(end)*3;
for j=1:length(XX)
    dAP5(j)=aproxFun5st(XX(j));
end    

hold on;
plot( XXX,YYY,"o" );
plot( XX,dAP5,"-" ); % d - aproksymacja 5 st.


  


function vectorA = aproxFun5stVector()
    X=XXX;
    Y=YYY;
    W = [ones(length(X),1) X' X'.^2 X'.^3  ];
    A = W'*W;
    b = W'*Y';
    vectorA = A\b;
end     
   
 


 

function y = aproxFun5st(x)
   multi=1; if (x<0) x=-x; multi=-1; end % nieparzystosc

   if (x>400) y=0.18;
   elseif (x>280)
       y0=0.171013;y1=0.18;
       y=y0+(y1-y0)*((x-280)/(400-280));
   else
 y=0.270529360498919+x*(0.0102965513204268+x*(-5.28805197847902e-05+x*(-2.89019332648018e-08+x*(2.92192106012333e-10))));    

 
       %{
       y=0; 
       len=length(vectorA);
       for i=1:len-1
        bck = (len-i+1);
        ai=vectorA(bck);
          y = x*(ai+y);
       end    
       y=y+vectorA(1);
       %}
   end    
   y=y*multi;
end



end









 