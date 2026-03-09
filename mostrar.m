function    mostrar;
% (sub1,sub2,sub3,sub4,sub5,pixeles,metros)
archivo=seleccion(); %Se selecciona la persona y se llama su archivo correspondiente
warning off;
 nombre='olis';
escala=360/1; %Realiza cálculo de la escala
if archivo(5,2)<archivo(1,2) 
    archivo=acomodar(archivo);%Corrige el orden de los puntos de ser necesario
end
x=(archivo(:,1))/escala; %Se aplica la escala de píxeles a metros
y=(-1*archivo(:,2))/escala; %Se aplica la escala de píxeles a metros y se realiza el ajuste de las ordenadas.
while mod(length(x),5)~=0 %Recortamos los vectores cuando es necesario, se requiere que el número de marcas 5
    x(end)=[];
    y(end)=[];
end
x=x-min(x); %Recorre el valor inicial de x a 0
y=y-min(y); %Recorre el valor inicial de y a 0
cadera=1:1:length(x)/5; %Se crean los vectores desde el inicio para asegurarnos que cuadren las dimensiones
rodilla=1:1:length(x)/5;
tobillo=1:1:length(x)/5;
porcentaje=(1/(length(x)/5):1/(length(x)/5):1)*300;
posicion=zeros(1,length(porcentaje)); %Vector para encontrar punto de apoyo
posicion2=zeros(1,length(porcentaje)); %Vector para encontrar inicio/fin de las zancadas
for i=1:1:length(x)/5
  deltax=x(5*i-4)-x(5*i-3); %Cateto adyacente
    deltay=y(5*i-4)-y(5*i-3); %Cateto opuesto
    hipotenusa=sqrt(deltax^2+deltay^2); %Hipotenusa
    cadera(i)=acosd(deltax/hipotenusa); %Calculamos el ángulo  
       deltax=x(5*i-2)-x(5*i-3); %Reciclamos las variables para el resto de los ángulos
    deltay=y(5*i-3)-y(5*i-2);
    hipotenusa=sqrt(deltax^2+deltay^2);
    rodilla(i)=acosd(deltax/hipotenusa);
     deltax=x(5*i)-x(5*i-1); %Volvemos a reciclar las variables
    deltay=y(5*i)-y(5*i-1);
    hipotenusa=sqrt(deltax^2+deltay^2);
    %tobillo(i)=asind(deltay/hipotenusa);
    tobillo(i)=acosd(deltax/hipotenusa);
        deltax=x(5*i-1)-x(5*i-3); %Cateto
    deltay=y(5*i-3)-y(5*i-1); %Cateto
    hipotenusa=sqrt(deltax^2+deltay^2); %Hipotenusa
    pendulo(i)=acosd(deltax/hipotenusa); %�?ngulo entre la articulación coxofemoral y la del tobillo
end
for i=1:1:length(x)/5
        if abs(pendulo(i)-90)<1 %Busca el instante donde se produce el apoyo
         posicion(i)=1;
    end
     if abs(pendulo(i)-pendulo(5))<7 %Busca la el inicio/fin de la zancada
         posicion2(i)=1;
     end
end
a=0; %Contador
b=0; %Contador
minimos=[]; %Vector para buscar la posicion de los puntos de apoyo
minimos2=[]; %Vector para buscar la posicion del inicio fin de la zancada
i=1;
while i<=length(posicion)
    if posicion(i)==1 %Busca el valor donde se produce el apoyo
        a=a+1;
        minimos(a)=i;
        i=i+floor(length(posicion)/3.5); %Salta para evitar tomar dos zancadas consecutivas
    else
        i=i+1;
    end
end
i=1;
a=0;
while i<=length(posicion2) %Busca el valor de inicio/fin de zancada
    if posicion2(i)==1
        a=a+1;
        minimos2(a)=i;
        i=i+floor(length(posicion)/3.5); %Salta para evitar tomar dos zancadas conscutivas
    else
        i=i+1;
    end
end
centro=1:1:length(x)/5; %Vector posicion centro de la cabeza
altura=(y(6)-y(10))*.75;%Altura para dibujar el tronco
cuello=y(6)-y(10)+altura;%Altura para dibujar el cuello
codo=altura/5; %El codo es un triángulo rectángulo, este es el valot de un cateto
centro(1)=cuello*1.05; %Coordenada y de centro de la cabeza en la primera zancada
radio=centro(1)-cuello; %Radio de la cabeza
estatura=cuello+2*radio;%Altura para dibujar el tronco
cadera=smooth(cadera);%Suavizamos las gráficas
rodilla=smooth(rodilla);
tobillo=smooth(tobillo);
i=1; %Inicializa el contador
a=1;%Marca Cresta
b=5;%Marca Punta Pie
c=1; %Contador
d=1; %Contador
syms X;
curva1=sqrt(radio^2-(X-x(a))^2)+centro(1); %Semicírculo superior cabeza
curva2=-sqrt(radio^2-(X-x(a))^2)+centro(1); %Semicírculo inferior cabeza
diametro=linspace(x(a)-radio,x(a)+radio,15); %Valores de x para el círculo
arco1=subs(curva1,X,diametro); %valores de y para el semicírculo superior
 arco2=subs(curva2,X,diametro);%Valores de y para el semícirculo inferior
[sub1,sub2,sub3,sub4,sub5]=creargraficas(nombre,cadera,rodilla,tobillo,pendulo,estatura,x,y);
for i=2:1:length(x)/5 %Se divide entre 5 ya que son 5 puntos por frame
    a=5*i-4; %Busca la posición de la marca de la cadera
    b=5*i; %Busca la posición de la marca de la punta del pie
     cambiox=x(a)-x(5*i-9);
%     cambioy=y(a)-y(5*i-9);
    diametro=diametro+cambiox;
        centro(i)=y(a)+altura;
    curva1=sqrt(radio^2-(X-x(a))^2)+centro(i);
curva2=(-sqrt(radio^2-(X-x(a))^2)+centro(i));
%     arco1=arco1+cambioy;
%     arco2=arco2+cambioy;
 arco1=subs(curva1,X,diametro)+radio; %Obtención valores de Y para el círculo
 arco2=subs(curva2,X,diametro)+radio;
         if i==minimos(d) || minimos(d)==1 %Pinta de verde cuando se tiene punto de apoyo
            color=[0 1 0];
        end
        if i==minimos2(c) || minimos2(c)==1 %Pinta de blanco cuando es el inicio/fin de la zancada
            color=[1 1 1];
        end
h=line(sub1,x(a:b),y(a:b),'color',color); %Plotea cadera-pie
tronco=line(sub1,[x(a) x(a)],[y(a) y(a)+altura],'color',color); %Plotea dorso
brazo=line(sub1,[x(a) x(a)-codo],[y(a)+altura*.8 y(a)+altura*.5],'color',color); %Plotea brazo
antebrazo=line(sub1,[x(a)-codo x(a)+.2*codo],[y(a)+altura*.5 y(a)+altura*.5],'color',color);  %Plotea antebrazo
cabeza=line(sub1,diametro,arco1,'color',color); %Plotea la mitad del semicirculo
cabeza2=line(sub1,diametro,arco2,'color',color); %Plotea la mitad del semicirculo
        color=[1 0 120/255];
line(sub2,porcentaje(i-1:i),cadera(i-1:i),'color',color);
if i==minimos2(c) || minimos2(c)==1 %Cada if añade una marca para indicar el inicio/fin de la zancada
    axes(sub2);
            xline(300*i/length(porcentaje),'--',{'Inicio/Fin','Zancada'},'Color',[1 1 1]); %Texto fase traslado a la derecha
            xline(300*i/length(porcentaje),'--','Color',[1 1 1]); %Traza la línea punteada entre las dos fases
end
line(sub3,porcentaje(i-1:i),rodilla(i-1:i),'color',color);
if i==minimos2(c) || minimos2(c)==1 
    axes(sub3);
             xline(300*i/length(porcentaje),'--',{'Inicio/Fin','Zancada'},'Color',[1 1 1]); %Texto fase traslado a la derecha
            xline(300*i/length(porcentaje),'--','Color',[1 1 1]); %Traza la línea punteada entre las dos fases
end
line(sub4,porcentaje(i-1:i),tobillo(i-1:i),'color',color);
if i==minimos2(c) || minimos2(c)==1
    axes(sub4);
            xline(300*i/length(porcentaje),'--',{'Inicio/Fin','Zancada'},'Color',[1 1 1]); %Texto fase traslado a la derecha
            xline(300*i/length(porcentaje),'--','Color',[1 1 1]); %Traza la línea punteada entre las dos fases
end
line(sub5,porcentaje(i-1:i),pendulo(i-1:i),'color',color);
if i==minimos2(c) || minimos2(c)==1
    axes(sub5);
            xline(300*i/length(porcentaje),'--',{'Inicio/Fin','Zancada'},'Color',[1 1 1]); %Texto fase traslado a la derecha
            xline(300*i/length(porcentaje),'--','Color',[1 1 1]); %Traza la línea punteada entre las dos fases
end
hold on
    pause(.01); %Pausa para que se asemeje a los fps
    if i==minimos2(c) || minimos2(c)==1 %Avanza al siguiente punto donde se encuentra el inicio/fin de la zancada
        c=c+1;
        if c>length(minimos2)
            c=length(minimos2);
        end
    else
        if i==minimos(d) || minimos(d)==1 %Avanza al siguiente punto de apoyo
            d=d+1;
            if d>=length(minimos)
            d=length(minimos);
            end
        else
        color=[1 0 120/255];
        delete(h); %Aquí se borran las marcas para mantener solo la actual
        delete(tronco);
        delete(brazo);
        delete(antebrazo);
        delete(cabeza);
        delete(cabeza2);
        end
     end
end
fprintf('La escala en la marcha de %s es de %d píxeles/metro. \n',nombre,escala);%Muestra la escala utilizada para cada caso
fprintf('El vector tiene %d puntos. \n',length(x));
fprintf('Se tomaron %d fotogramas en las 3 zancadas. \n',length(x)/5);
end