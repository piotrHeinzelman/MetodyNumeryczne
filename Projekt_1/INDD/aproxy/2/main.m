clear all;

X = [ 20, 50, 100, 150, 200, 250, 280, 300 ];
XX= 20:.1:300;
Y = [ 0.46 , 0.64 , 0.78 , 0.68 , 0.44 , 0.23 , 0.18 , 0.18 ];

 
global vectorA

bSK(i)=FunkcjaSklejana(XX(i));


hold on;
plot( X,Y,"o" );
plot( XX,bSK,"-" ); % b - f.sklejana
plot( XX,dAP5,"-" ); % d - aproksymacja 5 st.


 

% funkcja sklejana
function y = FunkcjaSklejana(x)
    X = [ 20, 50, 100, 150, 200, 250, 280, 300   ];   %% local data + aprox data
    Y = [ 0.46 , 0.64 , 0.78 , 0.68 , 0.44 , 0.23 , 0.18 , 0.18  ];
    if (x>=X(1)) 
        if (x<=X(end))
        for i=1:length(X)-1
            if  ( x<=X( i+1 ))
                xx=x-X(i);
                H=(Y(i+1))-(Y(i)); 
                W=(X(i+1))-(X(i)); 
                y=Y(i)+(xx*H)/W; 
                return
            end % H/z proporcji H/y=W/x
        end    
        end
    end
end

 



function vectorA = aproxFun5stVector()

    X = [ 20, 50, 100, 150, 200, 250, 280, 300   ];   %% local data + aprox data
    Y = [ 0.46 , 0.64 , 0.78 , 0.68 , 0.44 , 0.23 , 0.18 , 0.18  ];
    W = [ones(length(X),1) X' X'.^2 X'.^3 X'.^4];
    A = W'*W;
    b = W'*Y';
    vectorA = A\b;
end      % y=0.270529360498919+x*(0.0102965513204268+x*(-5.28805197847902e-05+x*(-2.89019332648018e-08+x*(2.92192106012333e-10))));    

   
 


 

function y = aproxFun5st(x)
    global vectorA
 
   y=0; 
   len=length(vectorA);
   for i=1:len-1
    bck = (len-i+1);
    ai=vectorA(bck);
      y = x*(ai+y);
   end    
   y=y+vectorA(1);
end













 