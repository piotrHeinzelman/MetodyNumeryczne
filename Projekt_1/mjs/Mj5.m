% funkcja eksperymentalna - sklejana / aproksymowana wielomianami 3 stopnia
function y = Mj5(u)
                multi=1; if (u<0) u=-u; multi=-1; end
                if (u>400) y=0.18;
                elseif (u>280)
                    y0=0.171013;y1=0.18;
                    y=y0+(y1-y0)*((u-280)/(400-280));
                else
                    y=0.270529360498919+u*(0.0102965513204268+u*(-5.28805197847902e-05+u*(-2.89019332648018e-08+u*(2.92192106012333e-10))));    
                end    
                y=y*multi;    
        end
 