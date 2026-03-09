function [fs] = captura_arduino(puertx)
tic;
c=1;
p=0;
disp('Calculando frecuencia...');
while p <= 10
v(c)= puertx.analogRead(0);
c = c+1;
p=toc;
end
p=round(p);
fs =round(length(v)/p);
disp('La frecuencia es: ');fs
end
