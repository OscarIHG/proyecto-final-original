function [sub1,sub2,sub3,sub4,sub5]=creargraficas(nombre,cadera,rodilla,tobillo,pendulo,estatura,x,y);
set(gcf, 'Position', get(0, 'Screensize'));%Abre la figura en pantalla completa
sub1=subplot(4,2,[1:4]); %Subplot Stick Bar
sgtitle(nombre); %Muestra el nombre de la persona en la parte superior de la gráfica
set(gca,'Color','k'); %Fondo negro en las graficas
    title('Stick Bar'); %Título del subplot
    xlabel('Metros'); %Título del eje x
ylabel('Metros'); %Título del eje y
axis([min(x) max(x) min(y) estatura*1.1]); %Conserva las dimensiones de las líneas
%axis('equal');
sub2=subplot(4,2,5);
title('Cadera');
ylim([min(cadera) max(cadera)]);
sub3=subplot(4,2,6);
title('Rodilla');
ylim([min(rodilla) max(rodilla)]);
sub4=subplot(4,2,7);
title('Tobillo');
ylim([min(tobillo) max(tobillo)]);
sub5=subplot(4,2,8);
title('Péndulo');
ylim([min(pendulo) max(pendulo)]);
end