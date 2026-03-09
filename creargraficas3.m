function [sub1,sub2,sub3,sub4,sub5]=creargraficas3(X,cadera,rodilla,tobillo,pendulo,tiempo,estatura)
sgtitle('Marcha Producida');
sub1=subplot(4,2,[1:4]);
title('Stickbar');
axis([0 max(X) 0 estatura*1.1]);
set(gca,'Color','k'); %Fondo negro
xlabel('Metros'); %Etiqueta eje x
ylabel('Metros'); %Etiqueta eje y
sub2=subplot(4,2,5);
title('Cadera');
axis([0 max(tiempo) min(cadera) max(cadera)]);
set(gca,'Color','k'); %Fondo negro
xlabel('Zancada'); %Etiqueta eje x
ylabel('Ángulo'); %Etiqueta eje y
sub3=subplot(4,2,6);
title('Rodilla');
axis([0 max(tiempo) min(rodilla) max(rodilla)]);
set(gca,'Color','k'); %Fondo negro
xlabel('Zancada'); %Etiqueta eje x
ylabel('Ángulo'); %Etiqueta eje y
sub4=subplot(4,2,7);
title('Tobillo');
axis([0 max(tiempo) min(tobillo) max(tobillo)]);
set(gca,'Color','k'); %Fondo negro
xlabel('Zancada'); %Etiqueta eje x
ylabel('Ángulo'); %Etiqueta eje y
sub5=subplot(4,2,8);
title('Péndulo');
axis([0 max(tiempo) min(pendulo) max(pendulo)]);
set(gca,'Color','k'); %Fondo negro
xlabel('Zancada'); %Etiqueta eje x
ylabel('Ángulo'); %Etiqueta eje y
end