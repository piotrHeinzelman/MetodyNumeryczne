

% Euler =   "normal","extend", "E","M" 
% u(t) = setUSin( 250 , 2*3.14*5 ) , setUProst(Vmax), setUConst(Vmax)
% Mj =   ""const"","crazy" 
prepare();


setSection(0);
% Część 1
if (false)
setSection(1);    
setEuler("normal");
setMj( "const" );

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
if (false)
setSection(2);
setEuler("extend");

setMj("inter");    setUSin( 240 , 2 ); plt(); setUSin( 120 , 2 ); plt();
setMj("sklejana"); setUSin( 240 , 2 ); plt(); setUSin( 120 , 2 ); plt();
setMj("ap3st");    setUSin( 240 , 2 ); plt(); setUSin( 120 , 2 ); plt();
setMj("ap5st");    setUSin( 240 , 2 ); plt(); setUSin( 120 , 2 ); plt(); 
setMj("crazy");    setUSin( 240 , 2 ); plt(); setUSin( 120 , 2 ); plt();   
end

% Część 3 a - duzy krok
if (false)
setSection(3);
setMj( "const" );
setEuler("extend");
setStepH(.5);

i=1;
setUConst(1);        Y=Euler(T); moc(i)="h=.5 u(t)=1[V], prostokat:"+(Power(Y,0))+", parabol: "+(Power(Y,1)); i=i+1; 
setUProst(120);      Y=Euler(T); moc(i)="h=.5 u(t)=wym. prost. 120V, prostokat:"+(Power(Y,0))+", parabol: "+(Power(Y,1)); i=i+1;
setUSin( 240 , 1 );  Y=Euler(T); moc(i)="h=.5 u(t)=240sin(t), prostokat:"+(Power(Y,0))+", parabol: "+(Power(Y,1)); i=i+1;
setUSin( 210 , 2*3.14*5 ); Y=Euler(T); moc(i)="h=.5 u(t)=210sin(2*3*5t), prostokat:"+(Power(Y,0))+", parabol: "+(Power(Y,1)); i=i+1;
setUSin( 120 , 2*3.14*50 );Y=Euler(T); moc(i)="h=.5 u(t)=210sin(2*3*50t), prostokat:"+(Power(Y,0))+", parabol: "+(Power(Y,1)); i=i+1;

setStepH(.00001);
setUConst(1);        Y=Euler(T); moc(i)="u(t)=1[V], prostokat:"+(Power(Y,0))+", parabol: "+(Power(Y,1)); i=i+1;
setUProst(120);      Y=Euler(T); moc(i)="u(t)=wym. prost. 120V, prostokat:"+(Power(Y,0))+", parabol: "+(Power(Y,1)); i=i+1;
setUSin( 240 , 1 );  Y=Euler(T); moc(i)="u(t)=240sin(t), prostokat:"+(Power(Y,0))+", parabol: "+(Power(Y,1)); i=i+1;
setUSin( 210 , 2*3.14*5 ); Y=Euler(T); moc(i)="u(t)=210sin(2*3*5t), prostokat:"+(Power(Y,0))+", parabol: "+(Power(Y,1)); i=i+1;
setUSin( 120 , 2*3.14*50 );Y=Euler(T); moc(i)="u(t)=210sin(2*3*50t), prostokat:"+(Power(Y,0))+", parabol: "+(Power(Y,1)); i=i+1;

info=moc'

%{
   "h=.5 u(t)=1[V], prostokat:4586.1324, parabol: 4864.5328"
    "h=.5 u(t)=wym. prost. 120V, prostokat:26672255.7202, parabol: 27864834.0256"
    "h=.5 u(t)=240sin(t), prostokat:1311465145.5599, parabol: 1355003286.1799"
    "h=.5 u(t)=210sin(2*3*5t), prostokat:352.2364, parabol: 431.0448"
    "h=.5 u(t)=210sin(2*3*50t), prostokat:2170615.6745, parabol: 2496659.2445"
    "u(t)=1[V], prostokat:2.9527e-12, parabol: 3.0282e-12"
    "u(t)=wym. prost. 120V, prostokat:9.8564e-09, parabol: 1.0093e-08"
    "u(t)=240sin(t), prostokat:8.9143e-10, parabol: 9.0219e-10"
    "u(t)=210sin(2*3*5t), prostokat:1.9454e-12, parabol: 1.9759e-12"
    "u(t)=210sin(2*3*50t), prostokat:1.1078e-08, parabol: 1.1131e-08"
    
    duzy krok: 0.5[s]
            1[V]    4586.1324   4864.5328
    prost. 120V     26672255.7202   27864834.0256
    240sin(t)       1311465145.5599 1355003286.1799
    210sin(2*3*5t)  352.2364    431.0448
    210sin(2*3*50t) 2170615.6745    2496659.2445
    
    mały krok: 00001[s]
            1[V]    2.9527e-12      3.0282e-12"
    prost. 120V,    9.8564e-09      1.0093e-08"
    240sin(t)       8.9143e-10      9.0219e-10"
    210sin(2*3*5t)  1.9454e-12      1.9759e-12"
    210sin(2*3*50t) 1.1078e-08      1.1131e-08"
%}

end

% Część 4 pow(Fi) moc od częstotliwości przy Mj=0.8 P=406[W] - wykres
if (false)
setSection(4);
setMj( "const" );

f=-1:.05:1;
p=f;
    for i=1:length(f)
       p(i)=Pow(f(i));
    end
hold on
xline(0,":");
yline(0,":");
plot(f,p,"-");    

end

% Część 5 miejsca zerowe
if (true)
setSection(5);
setMj( "const" );

%bisekcja
c = bisekcja(0.0, 0.1 ,1); info="bisekcja: 0.0 - 0.1"+ c
c = bisekcja(0.5, 1.0 ,1); info="bisekcja: 0.5 - 1.0"+ c

% sieczne
c = Sieczne(0.3 , 0.1); info="sieczne: 0.3 - 0.1"+ c
c = Sieczne(1.0 , 0.7); info="sieczne: 1.0 - 0.7"+ c

% newton
c = Newton(.1); info="Newton: 0.1 "+ c
c = Newton(.7); info="Newton: 0.7 "+ c

end




