

% Euler =   "normal","extend", "E","M" 
% u(t) = setUSin( 250 , 2*3.14*5 ) , setUProst(Vmax), setUConst(Vmax)
% Mj =   ""const"","crazy" 
prepare();


setSection(0);
% Część 1
if (false)
setSection(1);    
setEuler("normal");
setMj( 0,"const" );

setUConst(110); plt();
setUProst(120); plt();
setUSin( 240 , 1 ); plt();
setUSin( 210 , 2*3.14*5 ); plt();
setUSin( 120 , 2*3.14*50 ); plt();

setEuler("extend");
setUConst(110); plt();
setUProst(120); plt();
setUSin( 240 , 1 ); plt();
setUSin( 210 , 2*3.14*5 ); plt();
setUSin( 120 , 2*3.14*50 ); plt();
end
 

% Część 2
if (true)
setSection(2);
setEuler("extend");

setMj("inter");    setUSin( 240 , 2 ); plt(); setUSin( 120 , 2 ); plt();
setMj("sklejana"); setUSin( 240 , 2 ); plt(); setUSin( 120 , 2 ); plt();
setMj("ap3st");    setUSin( 240 , 2 ); plt(); setUSin( 120 , 2 ); plt();
setMj("ap5st");    setUSin( 240 , 2 ); plt(); setUSin( 120 , 2 ); plt(); 
setMj("crazy");    setUSin( 240 , 2 ); plt(); setUSin( 120 , 2 ); plt();   
end