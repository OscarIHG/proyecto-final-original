function archivo=seleccion()
close all;

%[nombre,folder]=uigetfile('*.txt');%Archivo .txt predeterminado por defecto permite escoger solo uno
%Validar el tipo de archivo
% nombrecompleto=fullfile(folder,nombre);
% [folder,archivo,extension]=fileparts(nombrecompleto);
% nombre=strcat(archivo,extension);
archivo=fileread('ADRIANA.txt');%Lee el archivo
archivo=str2num(archivo); %El archivo original es una cadena de caracteres, hay que convertirlo a número
end