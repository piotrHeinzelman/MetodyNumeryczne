
clear all
global CFG uGen
config(-1,[]);
t = CFG(1,2):CFG(2,2):CFG(3,2);

    if (false) % charakterystyki wymuszeń
        hold on;
        xlabel("u(t)[V]"); ylabel("t[s]"); yline(0,":"); config( 5, [  2,  0,  0 ]); 

    %    config( 6, [ -1, 120, 1 ]);        title("prąd stały 120V");
    %    config( 6, [  0, 240, 1 ]);        title("prąd sinusoidalny 240V u(t)=240sin(t)");
    %    config( 6, [  0, 210, 2*3.15*5 ]); title("prąd sinusoidalny 210V u(t)=210sin(2πft) dla f=5[Hz]");
    %    config( 6, [  0, 120, 2*3.15*50]); title("prąd sinusoidalny 120V u(t)=120sin(2πft) dla f=50[Hz]");
    %    config( 6, [  2, 120, 120 ]); title("wymuszenie prostokątne 120V T=3[s]");

         UGen(); Y = Euler( t ); plot( t, Y(3,:), "-b" ); xlim([-2,32]); ylim([ -250 , 250 ]); %ylim([ CFG(2,6)*(-1.2) , CFG(2,6)*(1.2)] );
    return    
    end    

    if (true) % charakterystyki wMj(Uc)
        hold on;
        xlabel("Mj[H]"); ylabel("Uc[V]"); yline(0,":"); config( 5, [  3,  0,  0 ]); 
        X_ = [ 2, 5, 10, 15, 20, 25, 28, 30 ];
        Y_ = [ 0.46 , 0.64 , 0.78 , 0.68 , 0.44 , 0.23 , 0.18 , 0.18 ];
        Col=["r","g","b","c"];
        %LEG=[" ","interpolacja wielomianowa","interpolację funkcjami sklejanymi","aproksymację wielomianową st.3","aproksymację wielomianową st.5"];
        plot( X_, Y_, "o" ); xlim([-2,32]);  ylim([ -.2, 1.2 ]); %ylim([ CFG(2,6)*(-1.2) , CFG(2,6)*(1.2)] );
       
    %    config( 7, [  0, 0.8,0]);        title("Mj(Uj)=0.8[H] ");
    %    config( 7, [  1, 0, 0 ]);        title("interpolacja wielomianowa");
    %    config( 7, [  2, 0, 0 ]); title("interpolację funkcjami sklejanymi ");
    %    config( 7, [  3, 0, 0 ]); title("aproksymację wielomianową z zastosowaniem wielomianu stopnia 3");
    %    config( 7, [  4, 0, 0 ]); title("aproksymację wielomianową z zastosowaniem wielomianu stopnia 5");
    %    MuBuild(); 
         
    %     Y = Euler( t ); plot( t, Y(3,:), "-b" ); 

         for i=1:4
               config( 7, [  i, 0, 0 ]); 
               MuBuild(); 
               Y = Euler( t ); 
               plot( t, Y(3,:), "--" );
         end
         legend (" ","interpolacja wielomianowa","interpolację funkcjami sklejanymi","aproksymację wielomianową st.3","aproksymację wielomianową st.5");
    return    
    end   




Y = Euler( t );

hold on;
plot( t, Y(1,:), "-" , t, Y(2,:) , "-",t, Y(3,:) , "-" );


legend ("i1","i2","uc");
% y1=i1
% y2=i2
% y3=uc


