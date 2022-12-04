

% Euler =   "normal","extend", "E","M" 
% u(t) = setUSin( 250 , 2*3.14*5 ) , setUProst(Vmax), setUConst(Vmax)
% Mj =   ""const"","crazy" 
prepare();

setSection(1);
setEuler("M");
setMj( 0,"const" );
setUSin( 250 , 2*3.14*5 );
setUConst( 110 );
plt();

%{
setSection(1);
setUSin( 250 , 2*3.14*5 );
plt();
setUProst( 110 );
plt();
setUConst( 10 );
plt();
%}