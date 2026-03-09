function [v,rec]=sweep(fs,puertx)
% input('¿cuanto tiempo desea graficar)?',h)
m=fs*0.1;%el 1 signnifica que lee de 1 segundo en 1 segundo hasta t
c=1;
m=round(m);
    while c <= m
        v(c)= puertx.analogRead(0)/1024*5;
        c=c+1;
    end
    v=detrend(v);
    x=v;
    if mod(length(x),2) == 0
    Factores=FACTS(length(x));
    else
    x(length(x))=[];
    Factores=FACTS(length(x));
    end
    rec = trapz(reshape(abs(x),[Factores(1,1) Factores(1,2)]));
   
end