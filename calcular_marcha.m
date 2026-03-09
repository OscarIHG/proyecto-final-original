function [sub1,sub2,sub3,sub4,sub5,X,Y,x,estatura,cadera,tiempo,rodilla,tobillo,pendulo]=calcular_marcha(zancadas,sub1,sub2,sub3,sub4,sub5)
while(1)
archivo=fileread('ADRIANA.txt');
archivo=str2num(archivo);
x=archivo(746:1110,1)/360;
y=archivo(746:1110,2)/360;
y=y*-1;
x=x-min(x);
y=y-min(y);
cambiox=zeros(1,(length(x)-5));
cambioy=zeros(1,(length(x)-5));
iniciox=x(1:5);
inicioy=y(1:5);
for k=1:1:360
    cambiox(k)=x(k+5)-x(k);
    cambioy(k)=y(k+5)-y(k);
end
X=1:1:length(cambiox)*zancadas;
Y=1:1:length(cambiox)*zancadas;
tiempo=(5/length(cambiox):5/length(cambiox):zancadas);
cadera=1:1:length(X)/5;
rodilla=1:1:length(X)/5;
tobillo=1:1:length(X)/5;
pendulo=1:1:length(X)/5;
for i=1:1:zancadas  
for j=1:1:length(cambiox)/5
    iniciox(1)=iniciox(1)+cambiox(5*j-4);
    iniciox(2)=iniciox(2)+cambiox(5*j-3);
    iniciox(3)=iniciox(3)+cambiox(5*j-2);
    iniciox(4)=iniciox(4)+cambiox(5*j-1);
    iniciox(5)=iniciox(5)+cambiox(5*j);
    inicioy(1)=inicioy(1)+cambioy(5*j-4);
    inicioy(2)=inicioy(2)+cambioy(5*j-3);
    inicioy(3)=inicioy(3)+cambioy(5*j-2);
    inicioy(4)=inicioy(4)+cambioy(5*j-1);
    inicioy(5)=inicioy(5)+cambioy(5*j);
    X(5*j-4+length(cambiox)*(i-1))=iniciox(1);
    X(5*j-3+length(cambiox)*(i-1))=iniciox(2);
    X(5*j-2+length(cambiox)*(i-1))=iniciox(3);
    X(5*j-1+length(cambiox)*(i-1))=iniciox(4);
    X(5*j+length(cambiox)*(i-1))=iniciox(5);
    Y(5*j-4+length(cambiox)*(i-1))=inicioy(1);
    Y(5*j-3+length(cambiox)*(i-1))=inicioy(2);
    Y(5*j-2+length(cambiox)*(i-1))=inicioy(3);
    Y(5*j-1+length(cambiox)*(i-1))=inicioy(4);
    Y(5*j+length(cambiox)*(i-1))=inicioy(5);
end
iniciox(1:5)=x(1:5)+x(end-4)*i;
inicioy(1:5)=y(6:10);
end
for i=1:1:length(X)/5
  deltax=X(5*i-4)-X(5*i-3);
    deltay=Y(5*i-4)-Y(5*i-3);
    hipotenusa=sqrt(deltax^2+deltay^2);
    cadera(i)=acosd(deltax/hipotenusa);
       deltax=X(5*i-2)-X(5*i-3);
    deltay=Y(5*i-3)-Y(5*i-2);
    hipotenusa=sqrt(deltax^2+deltay^2);
    rodilla(i)=acosd(deltax/hipotenusa);
     deltax=X(5*i)-X(5*i-1);
    deltay=Y(5*i)-Y(5*i-1);
    hipotenusa=sqrt(deltax^2+deltay^2);
    tobillo(i)=acosd(deltax/hipotenusa);
        deltax=X(5*i-1)-X(5*i-3);
    deltay=Y(5*i-3)-Y(5*i-1);
    hipotenusa=sqrt(deltax^2+deltay^2);
    pendulo(i)=acosd(deltax/hipotenusa);
end
cadera=smooth(cadera);
rodilla=smooth(rodilla);
tobillo=smooth(tobillo);
pendulo=smooth(pendulo);
centro=1:1:length(X)/5;
altura=(Y(6)-Y(10))*.75;
cuello=Y(6)-Y(10)+altura;
codo=altura/5;
centro(1)=cuello*1.05;
radio=centro(1)-cuello;
estatura=cuello+2*radio;
syms Z;
for i=1:1:zancadas*length(cambiox)/5
    deltax=X(5*i-4)-X(5*i-3);
    deltay=Y(5*i-4)-Y(5*i-3);
    hipotenusa=sqrt(deltax^2+deltay^2);
    cadera(i)=acosd(deltax/hipotenusa);
    deltax=X(5*i-2)-X(5*i-3);
    deltay=Y(5*i-3)-Y(5*i-2);
    hipotenusa=sqrt(deltax^2+deltay^2);
    rodilla(i)=acosd(deltax/hipotenusa);
    deltax=X(5*i)-X(5*i-1);
    deltay=Y(5*i-1)-Y(5*i);
    hipotenusa=sqrt(deltax^2+deltay^2);
    tobillo(i)=acosd(deltax/hipotenusa);
    deltax=X(5*i-1)-X(5*i-3);
    deltay=Y(5*i-3)-Y(5*i-1);
    hipotenusa=sqrt(deltax^2+deltay^2);
    pendulo(i)=acosd(deltax/hipotenusa);
end
break
a=1;
b=5;
color=[1 0 0];
centro(1)=Y(a)+altura;
punto=[X(a),centro(1)+radio];
tronco=line(sub1,[X(a) X(a)],[Y(a) Y(a)+altura],'color',color);
brazo=line(sub1,[X(a) X(a)-codo],[Y(a)+altura*.8 Y(a)+altura*.5],'color',color);
antebrazo=line(sub1,[X(a)-codo X(a)+.2*codo],[Y(a)+altura*.5 Y(a)+altura*.5],'color',color);
cabeza=viscircles(sub1,punto,radio,'color',color,'LineWidth',3);
inferior=line(sub1,X(a:b),Y(a:b),'color',color);
color=[1 0 0];
pause(1/60);
for i=2:1:zancadas*length(cambiox)/5
    a=5*i-4;
    b=5*i;
    if i==2 || mod(i,length(cambiox)/5)==0
        dibujar_marcas(sub1,sub2,sub3,sub4,sub5,i,X,cambiox);
    else
    delete(inferior);
    delete(tronco);
    delete(antebrazo);
    delete(cabeza);
    delete(brazo);
    color=[1 0 0];
    end
centro(i)=Y(a)+altura;
punto=[X(a),centro(i)+radio];
tronco=line(sub1,[X(a) X(a)],[Y(a) Y(a)+altura],'color',color);
brazo=line(sub1,[X(a) X(a)-codo],[Y(a)+altura*.8 Y(a)+altura*.5],'color',color);
antebrazo=line(sub1,[X(a)-codo X(a)+.2*codo],[Y(a)+altura*.5 Y(a)+altura*.5],'color',color);
cabeza=viscircles(sub1,punto,radio,'color',color,'LineWidth',3);
inferior=line(sub1,X(a:b),Y(a:b),'color',color);
color=[1 0 0];
line(sub2,[tiempo(i-1) tiempo(i)],[cadera(i-1) cadera(i)],'color',color);
line(sub3,[tiempo(i-1) tiempo(i)],[rodilla(i-1) rodilla(i)],'color',color);
line(sub4,[tiempo(i-1) tiempo(i)],[tobillo(i-1) tobillo(i)],'color',color);
line(sub5,[tiempo(i-1) tiempo(i)],[pendulo(i-1) pendulo(i)],'color',color);
    pause(1/60);
end
end
