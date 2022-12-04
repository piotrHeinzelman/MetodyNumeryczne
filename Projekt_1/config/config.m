
function config( type , line )
global CFG
    if ( type>0 )
        CFG(:,type)=line';
    else
        CFG =  [   0,    0,      0   ]'; % start params ( y1=i1, y2=i2 y3=uc )
    config( 2, [   0,   0.0001,   30   ]); %   h params
    config( 3, [  0.1,   10,    0.5  ]); %  system params: 3 - R1 R2 C
    config( 4, [   3,     5,     0   ]); %  system params: 4 - L1 L2 M(not used!)
    config( 5, [   1,     0,     0   ]); %     Euler mode: 0 - normal, 1 - extended
    config( 6, [   0,    100,    1   ]); % UGeneratorType: "const."[-1,V,?], "sinus"[0,V,*2πf], "rectangle": [ 2,Vmax,0 ][2,120,0]
    config( 7, [   0,    0.8,    0   ]); % MjMode: "const" [0,value], [1..]-Vander [2]-Sklejane 1st [3]-apr. wielomian 3st [4]-apr 5 stopnia [5] FIXED -1000,1000
    config( 8, [   0,     0,    0   ]);  % images number, section

         UGen();
      MuBuild();
      setMj( (CFG(1,7)) , "" );
    end    
end
