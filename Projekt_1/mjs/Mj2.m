% "sklejana" funkcja sklejana wielomianem 3 stopnia
%
% aby w implementacji nie liczyć tego przy każdym uzyciu, wstawiam wartości
% HARD CODE

function y = Mj2(u)
    %C = obliczC()
    C=[0.0030    0.0511    0.1129    0.1374    0.1175    0.0726    0.0321    0.0290];
    
    x=u;
    a=0;
    h=50;
    h_=1/(h*h*h);
    sum=C(1);
    
    for i=1:8 % i=czesc
       sum=sum+(fun(i,x)*C(i));
    end    
    y=sum;


    function value=fun(i,x) 
    X=[-50,0,50,100,150,200,250,300,350];
    xi=X(i);
    h=50;    
    xi_2=xi-h-h;
    xi_1=xi-h;
    xi  =xi;
    xi1 =xi+h;
    xi2 =xi+h+h;
  
          if     ( x>=xi2 ) value = 0; 
          elseif ( x>=xi1 ) value = (xi2-x)^3;   
          elseif ( x>=xi )  value = (xi2-x)^3-4*(xi1-x)^3;     
          elseif ( x>=xi_1 )value = (-xi_2+x)^3-4*(-xi_1+x)^3;        
          elseif ( x>=xi_2 )value = (-xi_2+x)^3;            
          else value=0;    
      end    
    value=value*(1/(h*h*h));
     

    end

end





 
    

   


% funkcja sklejana
function CCC = obliczC()
    % obliaczam C
    % 4c0 + 2c1              = y0 + (h/3)*alpha
    %  c0 + 4c1 + c2         = y1
    %        c1 + 4c2 + c3   = y2

    %zmodyfikowane dane. przy 0 wartość powinna zbiegać do 0 , jeśli nie ma
    %prądu - to indukcyjność powinna wynosić zero przy cewce powietrznej. brak
    %informacji czy można przyjąć 0.35 czy 0 w punkcie 0

    % {
    %xx=0:50:300;
    X = [ 0, 50, 100, 150, 200, 250, 300 ]; 
        h=50;
        alp=0.003; 
        bet=.029; 
    Y = [ 0.43, 0.64 , 0.78 , 0.68 , 0.44 , 0.23 , 0.18 ]; 


    A = [ 4, 2, 0, 0, 0, 0, 0 
          1, 4, 1, 0, 0, 0, 0
          0, 1, 4, 1, 0, 0, 0
          0, 0, 1, 4, 1, 0, 0
          0, 0, 0, 1, 4, 1, 0
          0, 0, 0, 0, 1, 4, 1              
          0, 0, 0, 0, 0, 2, 4 ];

    C = A \ Y'
    cminus1=alp;
    cnplus1=bet;
    % }
    CC(1)=cminus1;
    for i=1:length(C)
        CC(i+1)=C(i);
    end    
    CC(length(CC))=cnplus1;
    CCC = CC; 
end





 