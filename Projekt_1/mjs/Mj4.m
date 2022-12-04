% "ap3st" aproksymacja wielomianem 3 st.
%  metoda Copy-Paste wersji 5 stopnia, ze zmianą funkcji ObliczA 
function y = Mj4(u)
    %ObliczA();
    y=0.270529360498919+u*(0.0102965513204268+u*(-5.28805197847902e-05+u*(-2.89019332648018e-08+u*(2.92192106012333e-10))));    
end
    
 
function vectorA = ObliczA()
    X = [ 20, 50, 100, 150, 200, 250, 280, 300];
    Y = [ 0.46 , 0.64 , 0.78 , 0.68 , 0.44 , 0.23 , 0.18 ,0.18 ];
    W = [ones(length(X),1) X' X'.^2 X'.^3 X'.^4  ];
    A = W'*W;
    b = W'*Y';
    vectorA = A\b
%A0=0.270529360498919
%A1=0.0102965513204268
%A2=-5.28805197847902e-05
%A3=-2.89019332648018e-08
%A4=2.92192106012333e-10
end     
   
