function P = Pow(Fi)
 global CFG
 t = CFG(1,2):CFG(2,2):CFG(3,2);
 config( 6, [ 0, 100, 2*3.15*Fi ]);
 UGen(); 
 Y = Euler( t );
 po=Power(Y,0);
 info="100*sin(2πωt) f="+Fi+" Power = "+po+" : po-406=" + (po-406) + ".";
 P=po-406;
end