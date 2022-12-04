
    if (false) % charakterystyki wymuszeñ
        hold on;
        xlabel("u(t)[V]"); ylabel("t[s]"); yline(0,":"); config( 5, [  2,  0,  0 ]); 

    %    config( 6, [ -1, 120, 1 ]);        title("pr¹d sta³y 120V");
    %    config( 6, [  0, 240, 1 ]);        title("pr¹d sinusoidalny 240V u(t)=240sin(t)");
    %    config( 6, [  0, 210, 2*3.15*5 ]); title("pr¹d sinusoidalny 210V u(t)=210sin(2?ft) dla f=5[Hz]");
    %    config( 6, [  0, 120, 2*3.15*50]); title("pr¹d sinusoidalny 120V u(t)=120sin(2?ft) dla f=50[Hz]");
    %    config( 6, [  2, 120, 120 ]); title("wymuszenie prostok¹tne 120V T=3[s]");

         UGen(); Y = Euler( t ); plot( t, Y(3,:), "-b" ); xlim([-2,32]); ylim([ -250 , 250 ]); %ylim([ CFG(2,6)*(-1.2) , CFG(2,6)*(1.2)] );
    return    
    end    

    if (false) % charakterystyki wMj(Uc)
        hold on;
        xlabel("Mj[H]"); ylabel("Uc[V]"); yline(0,":"); config( 5, [  3,  0,  0 ]); 
        X_ = [ 2, 5, 10, 15, 20, 25, 28, 30 ];
        Y_ = [ 0.46 , 0.64 , 0.78 , 0.68 , 0.44 , 0.23 , 0.18 , 0.18 ];
        Col=["r","g","b","c"];
        %LEG=[" ","interpolacja wielomianowa","interpolacjê funkcjami sklejanymi","aproksymacjê wielomianow¹ st.3","aproksymacjê wielomianow¹ st.5"];
        plot( X_, Y_, "o" ); xlim([-2,32]);  ylim([ -.2, 1.2 ]); %ylim([ CFG(2,6)*(-1.2) , CFG(2,6)*(1.2)] );
       
    %    config( 7, [  0, 0.8,0]);        title("Mj(Uj)=0.8[H] ");
    %    config( 7, [  1, 0, 0 ]);        title("interpolacja wielomianowa");
    %    config( 7, [  2, 0, 0 ]); title("interpolacjê funkcjami sklejanymi ");
    %    config( 7, [  3, 0, 0 ]); title("aproksymacjê wielomianow¹ z zastosowaniem wielomianu stopnia 3");
    %    config( 7, [  4, 0, 0 ]); title("aproksymacjê wielomianow¹ z zastosowaniem wielomianu stopnia 5");
    %    MuBuild(); 
         
    %     Y = Euler( t ); plot( t, Y(3,:), "-b" ); 

         for i=1:4
               config( 7, [  i, 0, 0 ]); z
               MuBuild(); 
               Y = Euler( t ); 
               plot( t, Y(3,:), "--" );
         end
         legend (" ","interpolacja wielomianowa","interpolacjê funkcjami sklejanymi","aproksymacjê wielomianow¹ st.3","aproksymacjê wielomianow¹ st.5");
    return    
    end   

if (false)
info="";
% Euler 
 config( 5, [   0,     0,    0   ]); info="met.Eulera, ";  %     Euler mode: 0 - normal, 1 - extended, 2 - power test, 3 - Mu(Uc) test
% config( 5, [   1,     0,    0   ]); info="met.Eulera ulepszona, ";  %     Euler mode: 0 - normal, 1 - extended, 2 - power test, 3 - Mu(Uc) test

% config( 6, [ -1, 120, 1 ]);        info=info+"u(t)=120[V], ";
% config( 6, [  0, 240, 1 ]);         info=info+"u(t)=240sin(t), ";
% config( 6, [  0, 210, 2*3.15*5 ]); info=info+"u(t)=210sin(t*2*3.14*f) f=5[Hz], ";
 config( 6, [  0, 120, 2*3.15*50]); info=info+"u(t)=120sin(t*2*3.14*f) f=50[Hz], ";
% config( 6, [  2, 120, 120 ]);      info=info+"wym. prostok¹tne 120V T=3[s], ";

%     config( 7, [  0, 0.8,0]);info=info+"Mj(Uj)=0.8[H]";
     config( 7, [  1, 0, 0 ]);info=info+"interpolacja wielomianowa";
%    config( 7, [  2, 0, 0 ]);info=info+"interpolacjê funkcjami sklejanymi ";
%    config( 7, [  3, 0, 0 ]);info=info+"aproksymacjê wielomianow¹ z zastosowaniem wielomianu stopnia 3";
%    config( 7, [  4, 0, 0 ]);info=info+"aproksymacjê wielomianow¹ z zastosowaniem wielomianu stopnia 5";

         UGen();
      MuBuild();
end

if (false)
    %config( 5, [   1,     0,    0   ]); info="met.Eulera ulepszona, ";  %     Euler mode: 0 - normal, 1 - extended, 2 - power test, 3 - Mu(Uc) test
    config( 5, [   3,     0,    0   ]); info="Test Mj(Uc), ";  %     Euler mode: 0 - normal, 1 - extended, 2 - power test, 3 - Mu(Uc) test

    config( 2, [   -100,   .01,  100  ]); %   h params
    t = CFG(1,2):CFG(2,2):CFG(3,2);  
    Y = Euler( t ); plot( t, Y(3,:));

hold on;
%     config( 7, [  0, 0.8,0]);info=info+"Mj(Uj)=0.8[H]";
%    config( 7, [  1, 0, 0 ]);info=info+"interpolacja wielomianowa"; UGen(); MuBuild();Y = Euler( t ); plot( t, Y(3,:));
%    config( 7, [  2, 0, 0 ]);info=info+"interpolacjê funkcjami sklejanymi ";UGen(); MuBuild();Y = Euler( t ); plot( t, Y(3,:));
%    config( 7, [  3, 0, 0 ]);info=info+"aproksymacjê wielomianow¹ z zastosowaniem wielomianu stopnia 3";UGen(); MuBuild();Y = Euler( t ); plot( t, Y(3,:));
    config( 7, [  4, 0, 0 ]);info=info+"aproksymacjê wielomianow¹ z zastosowaniem wielomianu stopnia 5";UGen(); MuBuild();Y = Euler( t ); plot( t, Y(3,:));
return
end

