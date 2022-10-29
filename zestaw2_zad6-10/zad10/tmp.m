clear all

X = [-1.75,-1.25,-0.75,-0.25,0.25,0.75];

Y = (X.*X);

e = 2.7182;

sum=0;
s=0;
for i=1:length(Y)
    s=s+e^Y(i); 
    Z(i)=e^Y(i);
    polZ(i) = Z(i)/2;
    sum=sum+polZ(i);
end  
s=s/2