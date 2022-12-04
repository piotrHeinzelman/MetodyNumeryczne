%{
import config.*
import mjs.*
addpath 'mjs'

global CFG uGen
config(-1,[]);
info=" ** ";
%}

prepare();

setSection(1);
setUSin( 250 , 2*3.14*5 );
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