function marchasimulada
while (1) %Ciclo para repetir el análisis
    close all;
    clear all;
    clc;
    fprintf('\t\t AN�?LISIS DE LA MARCHA\n');
    archivo=seleccion(); %Se selecciona la persona y se llama su archivo correspondiente
    mostrar(archivo); %Realiza las gráficas
    bye=input('Para visualizar otro análisis oprime 1: ','s');
    if strcmpi(bye,'1')==0 %Rompe el ciclo cuando no se ingrese un 1
    break;
    end
end
fprintf('Gracias por utilizar el programa del equipo 2.\n');

end