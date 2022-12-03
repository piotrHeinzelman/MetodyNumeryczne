function c = bisekcja(a,b,level)
    level=level+1;
        Pa=Pow(a);
        c=(a+b)/2;
        Pc=Pow(c);
        if (Pa*Pc>0)
            a=c;
        else
            b=c;
        end

        if (level<15)
            c = bisekcja(a,b,level);
        end
end
 