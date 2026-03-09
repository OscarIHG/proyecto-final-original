function [v,rec]=leer_muestra(fs,puertx)
m=fs*0.1;
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
