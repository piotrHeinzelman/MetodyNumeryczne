% "ap3st" aproksymacja wielomianem 3 st.
%  metoda Copy-Paste wersji 5 stopnia, ze zmianą funkcji ObliczA 
function y = Mj3(u)
    % ObliczA();
    y=0.478524285255746+u*(0.00343707585345168+u*(-1.59263685413181e-05));    
end
    
 
function vectorA = ObliczA()
    X = [ 20, 50, 100, 150, 200, 250, 280, 300];
    Y = [ 0.46 , 0.64 , 0.78 , 0.68 , 0.44 , 0.23 , 0.18 ,0.18 ];
    W = [ones(length(X),1) X' X'.^2  ];
    A = W'*W;
    b = W'*Y';
    vectorA = A\b;
    % A0=0.478524285255746
    % A1=0.00343707585345168
    % A2=-1.59263685413181e-05
end     
   
