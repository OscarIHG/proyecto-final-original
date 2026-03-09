
function varargout = GUIDEE(varargin)

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUIDEE_OpeningFcn, ...
                   'gui_OutputFcn',  @GUIDEE_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before GUIDEE is made visible.
function GUIDEE_OpeningFcn(hObject, eventdata, handles, varargin)
    set(hObject,'Color',[0.7843 0.8588 0.8705])

axes(handles.fondo);
[x,map]=imread('porti.png');
image(x);
colormap(map);
axis off
hold on




% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUIDEE (see VARARGIN)

% Choose default command line output for GUIDEE
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUIDEE wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUIDEE_OutputFcn(hObject, eventdata, handles) 


% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in binicio.
function binicio_Callback(hObject, eventdata, handles)
    set(hObject,'visible','off')
    set(handles.B1,'visible','on');
    set(handles.B2,'visible','on');
    set(handles.B3,'visible','on');
    axes(handles.imboni);
    
    [x,map]=imread('bonits.jpg');
    image(x);
    colormap(map);
    hold on
    set(handles.imboni,'visible','on');
    axis off
    set(handles.fondo,'visible','off'); %%%%%
    cla(handles.fondo);



%delete(handles.fondo);


% --- Executes on button press in B1.
function B1_Callback(hObject, eventdata, handles)

    set(hObject,'visible','off');
    set(handles.B2,'visible','off');
    set(handles.B3,'visible','off');
    set(handles.salir,'visible','on');
    set(handles.cmz,'visible','on');
    handles.cmz.UserData=1;  
    set(handles.emg_g1,'visible','on');
    set(handles.emg_g2,'visible','on');
    set(handles.emg_g3,'visible','on');
    set(handles.tiempito,'visible','on');
    set(handles.text2,'visible','on');
    set(handles.com,'visible','on');
    set(handles.TDT,'visible','on');
    set(handles.TDC,'visible','on');
    set(handles.imboni,'visible','off');
    cla(handles.imboni);
    set(handles.testog1,'visible','on');
    set(handles.testog2,'visible','on');
    set(handles.testog3,'visible','on');




    
    % --- Executes on button press in B2.
function B2_Callback(hObject, eventdata, handles)
    set(hObject,'visible','off');
    set(handles.B1,'visible','off');
    set(handles.B3,'visible','off');
    set(handles.salir,'visible','on');
    set(handles.cmz,'visible','on');
    set(handles.tiempito,'visible','on');
    set(handles.com,'visible','on');
    set(handles.text2,'string','Ingresa escala metros-pixeles');
    set(handles.text2,'visible','on');
    set(handles.TDP,'visible','on');
    set(handles.TDM,'visible','on');
    set(handles.emg_g1,'visible','on');
    set(handles.caderis,'visible','on');
    set(handles.rodillis,'visible','on');
    set(handles.tobillis,'visible','on');
    set(handles.pendulis,'visible','on');
    set(handles.imboni,'visible','off');
    cla(handles.imboni);
    set(handles.TDA,'visible','on');
    set(handles.TDAA,'visible','on');
    set(handles.KK1,'visible','on');
    set(handles.KK2,'visible','on');
    set(handles.KK3,'visible','on');
    set(handles.KK4,'visible','on');
    
    set(handles.KK1,'string','CADERA');
    set(handles.KK2,'string','RODILLA');
    set(handles.KK3,'string','TOBILLA');
    set(handles.KK4,'string','PÉNDULO');
        set(handles.testog1,'visible','on');

    set(handles.testog1,'string','STICK BAR');






    handles.cmz.UserData=2;    

% --- Executes on button press in B3.
function B3_Callback(hObject, eventdata, handles)
    set(hObject,'visible','off');
    set(handles.B1,'visible','off');
    set(handles.B2,'visible','off');
    set(handles.salir,'visible','on');
    set(handles.cmz,'visible','on');
    set(handles.text2,'visible','on');
    set(handles.text2,'string','Ingresa en número de zancadas');
    set(handles.tiempito,'visible','on');
    set(handles.TDZ,'visible','on');
    set(handles.emg_g1,'visible','on');
    set(handles.caderis,'visible','on');
    set(handles.rodillis,'visible','on');
    set(handles.tobillis,'visible','on');
    set(handles.pendulis,'visible','on');
    set(handles.imboni,'visible','off');
        set(handles.KK1,'visible','on');
    set(handles.KK2,'visible','on');
    set(handles.KK3,'visible','on');
    set(handles.KK4,'visible','on');
            set(handles.testog1,'visible','on');

        set(handles.KK1,'string','CADERA');
    set(handles.KK2,'string','RODILLA');
    set(handles.KK3,'string','TOBILLA');
    set(handles.KK4,'string','PÉNDULO');
        set(handles.testog1,'string','STICK BAR');

    cla(handles.imboni);

    handles.cmz.UserData=3;    
    

function binicio_CreateFcn(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function B1_CreateFcn(hObject, eventdata, handles)
set(hObject,'visible','off')

% --- Executes during object creation, after setting all properties.
function B2_CreateFcn(hObject, eventdata, handles)
set(hObject,'visible','off')


% --- Executes during object creation, after setting all properties.
function B3_CreateFcn(hObject, eventdata, handles)
set(hObject,'visible','off')


% --- Executes on button press in salir.
function salir_Callback(hObject, eventdata, handles)
    set(hObject,'visible','off');
    set(handles.B1,'visible','off');
    set(handles.B2,'visible','off');
    set(handles.B3,'visible','off');
    set(handles.binicio,'visible','on');
    set(handles.cmz,'visible','off');
    handles.cmz.UserData=0;    
    set(handles.emg_g1,'visible','off');
    set(handles.emg_g2,'visible','off');
    set(handles.emg_g3,'visible','off');
    set(handles.text2,'visible','off');
    set(handles.tiempito,'visible','off');
    set(handles.com,'visible','off');
    cla(handles.emg_g1);
    cla(handles.emg_g2);
    cla(handles.emg_g3);
    set(handles.tiempito,'string','');
    set(handles.com,'string','');
    set(handles.TDC,'visible','off');
    set(handles.TDT,'visible','off');
    set(handles.TDP,'visible','off');
    set(handles.TDM,'visible','off');
    set(handles.TDZ,'visible','off');
        set(handles.testog1,'visible','off');
    set(handles.testog2,'visible','off');
    set(handles.testog3,'visible','off');
    
    set(handles.caderis,'visible','off');
    set(handles.rodillis,'visible','off');
    set(handles.tobillis,'visible','off');
    set(handles.pendulis,'visible','off');
    cla(handles.caderis);
    cla(handles.rodillis);
    cla(handles.tobillis);
    cla(handles.pendulis);
        set(handles.TDA,'visible','off');
    set(handles.TDAA,'visible','off');
        set(handles.TDAA,'string','');
            set(handles.KK1,'visible','off');
    set(handles.KK2,'visible','off');
    set(handles.KK3,'visible','off');
    set(handles.KK4,'visible','off');

    
    
    set(handles.fondo,'visible','on');
    axes(handles.fondo);
[x,map]=imread('porti.png');
image(x);
colormap(map);
axis off
hold on




delete(instrfind({'Port'},{'COM4'}));


% --- Executes during object creation, after setting all properties.
function salir_CreateFcn(hObject, eventdata, handles)
    set(hObject,'visible','off')


% --- Executes on button press in cmz.
function cmz_Callback(hObject, eventdata, handles)

   yyy= handles.cmz.UserData;   
   

   if yyy== 1 %En caso de que sea uno, cuado se presione el botón de inicio cmz se iniciará el proceso relativo a la sección ELECTROMIOGRAMA
                    fprintf('Hola 1\n')
                    sub1=handles.emg_g3;
                    ttt=str2num(get(handles.tiempito,'String')); %dd es la cantidad de tiempo
                    puertoo=get(handles.com,'String');
                    puertx=arduino(puertoo);

                    [fs] = captura(puertx);

                    d1 = designfilt('lowpassiir','FilterOrder',4, ...
                        'PassbandFrequency',10,'PassbandRipple',0.0000001, ...
                        'SampleRate',fs);

                        c=1;
                        vc=0;
                        k=5;
                        m=1;
                        d=1;
                        jaja=0;
                        fsn=50


                      while c <= ttt*10
               [v,rec] = sweep(fs,puertx);
                if c == 1
                    vc = v;
                    rect=rec;
                else
                   vc = [vc v];
                   rect=[rect rec];

                end
                fse=length(vc)/(0.1*c);
                fsn=length(rect)/(0.1*c);
                ti=1/fse:1/fse:(0.1*c);
                tin=1/fsn:1/fsn:(0.1*c);


                 if length(rect)>12
                rect = filtfilt(d1,rect); 
                    end
                plot(handles.emg_g2,tin,rect,'Color','r')
                set(handles.emg_g2,'YLimMode','manual');
                set(handles.emg_g2,'YLim',[0 1]);
                set(handles.emg_g2,'XLimMode','manual');
                set(handles.emg_g2,'XLim',[k-5 k]);
                set(handles.emg_g2,'color',[0 0 0]);
                

                plot(handles.emg_g1,ti,vc,'Color','r')
                set(handles.emg_g1,'YLimMode','manual');
                set(handles.emg_g1,'YLim',[-2 2])
                set(handles.emg_g1,'XLimMode','manual');
                set(handles.emg_g1,'XLim',[k-5 k])
                set(handles.emg_g1,'color',[0 0 0]);

                if k==c*.1
                       k=k+5;
                end
                
                if c>1
                    oo(c)=max(rec);
                    con=oo(c-1)-oo(c);
                    if oo(c-1)>=0.2 && con>0
                        jaja=1
                    end
                end
                oo(1)=0;
%                 3>=0.1*c 
                if oo(c)>=0.2 || jaja==1
                   
                      cla(sub1);
                   
                    if m==1;
                    color=[1 0 120/255];
                    warning off;
                    archivo=str2num(fileread('ADRIANA.txt'));
                    x=(archivo(:,1))/274; %Se aplica la escala de pÃ­xeles a metros
                    y=(-1*archivo(:,2))/274; %Se aplica la escala de pÃ­xeles a metros y se realiza el ajuste de las ordenadas.
                    x=x-min(x); %Recorre el valor inicial de x a 0
                    y=y-min(y); %Recorre el valor inicial de y a 0
                    porcentaje=(1/(length(x)/5):1/(length(x)/5):1)*300;
                    posicion=zeros(1,length(porcentaje)); %Vector para encontrar punto de apoyo
                    for i=1:1:length(x)/5
                      deltax=x(5*i-4)-x(5*i-3); %Cateto adyacente
                        deltay=y(5*i-4)-y(5*i-3); %Cateto opuesto 
                        deltax=x(5*i-2)-x(5*i-3); %Reciclamos las variables para el resto de los Ã¡ngulos
                        deltay=y(5*i-3)-y(5*i-2);
                        deltax=x(5*i)-x(5*i-1); %Volvemos a reciclar las variables
                        deltay=y(5*i)-y(5*i-1);
                        deltax=x(5*i-1)-x(5*i-3); %Cateto
                        deltay=y(5*i-3)-y(5*i-1); %Cateto
                        hipotenusa=sqrt(deltax^2+deltay^2); %Hipotenusa
                        pendulo(i)=acosd(deltax/hipotenusa); %Ã?ngulo entre la articulaciÃ³n coxofemoral y la del tobillo
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
                    minimos=[]; %Vector para buscar la posicion de los puntos de apoyo
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
                    centro=1:1:length(x)/5; %Vector posicion centro de la cabeza
                    altura=(y(6)-y(10))*.75;%Altura para dibujar el tronco
                    cuello=y(6)-y(10)+altura;%Altura para dibujar el cuello
                    codo=altura/5; %El codo es un triÃ¡ngulo rectÃ¡ngulo, este es el valot de un cateto
                    centro(1)=cuello*1.05; %Coordenada y de centro de la cabeza en la primera zancada
                    radio=centro(1)-cuello; %Radio de la cabeza
                    estatura=cuello+2*radio;%Altura para dibujar el tronco
                    end
                    i=1; %Inicializa el contador
                    G=1; %Contador
                    m=m+1;
                  %xlim([min(x) max(x)])
                    %ylim([min(y) estatura*1.1]); %Conserva las dimensiones de las lÃ­nea
                set(sub1);
                set(sub1,'YLimMode','manual');
                set(sub1,'YLim',[min(y) estatura*1.1]);
                set(sub1,'XLimMode','manual');
                set(sub1,'XLim',[min(x) max(x)]);     
                    w=m;
                       a=5*w-4; %Busca la posiciÃ³n de la marca de la cadera
                        b=5*w; %Busca la posiciÃ³n de la marca de la punta del pie

                             if w==minimos(d) || minimos(d)==1 %Pinta de verde cuando se tiene punto de apoyo
                                color=[0 1 0];
                             end
                        
                    h=line(handles.emg_g3,x(a:b),y(a:b),'color',color); %Plotea cadera-pie
                    tronco=line(handles.emg_g3,[x(a) x(a)],[y(a) y(a)+altura],'color',color); %Plotea dorso
                    brazo=line(handles.emg_g3,[x(a) x(a)-codo],[y(a)+altura*.8 y(a)+altura*.5],'color',color); %Plotea brazo
                    antebrazo=line(handles.emg_g3,[x(a)-codo x(a)+.2*codo],[y(a)+altura*.5 y(a)+altura*.5],'color',color);  %Plotea antebrazo
                    n=viscircles(sub1,[x(a) altura*2.5],.1,'color',color,'linewidth',1/72);
                    hold on
                        pause(.01); %Pausa para que se asemeje a los fps
                            if w==minimos(d) || minimos(d)==1 %Avanza al siguiente punto de apoyo
                                d=d+1;
                                if d>=length(minimos)
                                d=length(minimos);
                                end

                                if G>=2;
                                end
                                G=G+1;
                            else
                            con=w;
                                if jaja==0
                            color=[1 0 120/255];
%                             delete(h); %AquÃ­ se borran las marcas para mantener solo la actual
%                             delete(tronco);
%                             delete(brazo);
                            delete(antebrazo);
                            delete(n);
                                end
                            end

                        if w == 220
                            m=1;
                            d=0;
                         cla(sub1)
                        end
                       
                end
                jaja=0;
                drawnow limitrate
                c = c+1;
                      end  
                 
        
    
   elseif yyy==2 %En caso de que sea uno, cuado se presione el botón de inicio cmz se iniciará el proceso relativo a la sección MARCHA PRODUCIDA
           arki=get(handles.TDAA,'string');
           arko=strcat(arki,'.txt');
           sub1=handles.emg_g1;
           sub2=handles.caderis;
           sub3=handles.rodillis;
           sub4=handles.tobillis;
           sub5=handles.pendulis;  
    pixeles=str2num(get(handles.com,'string'));
    metros=str2num(get(handles.tiempito,'string'));
    
   archivo=fileread(arko);%Lee el archivo
archivo=str2num(archivo); %El archivo original es una cadena de caracteres, hay que convertirlo a número
warning off;
 nombre='olis';
escala=metros/pixeles; %Realiza cÃ¡lculo de la escala
if archivo(5,2)<archivo(1,2) 
    archivo=acomodar(archivo);%Corrige el orden de los puntos de ser necesario
end
x=(archivo(:,1))/escala; %Se aplica la escala de pÃ­xeles a metros
y=(-1*archivo(:,2))/escala; %Se aplica la escala de pÃ­xeles a metros y se realiza el ajuste de las ordenadas.
while mod(length(x),5)~=0 %Recortamos los vectores cuando es necesario, se requiere que el nÃºmero de marcas 5
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
    cadera(i)=acosd(deltax/hipotenusa); %Calculamos el Ã¡ngulo  
       deltax=x(5*i-2)-x(5*i-3); %Reciclamos las variables para el resto de los Ã¡ngulos
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
    pendulo(i)=acosd(deltax/hipotenusa); %Ã?ngulo entre la articulaciÃ³n coxofemoral y la del tobillo
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
codo=altura/5; %El codo es un triÃ¡ngulo rectÃ¡ngulo, este es el valot de un cateto
centro(1)=cuello*1.05; %Coordenada y de centro de la cabeza en la primera zancada
radio=centro(1)-cuello; %Radio de la cabeza
estatura=cuello+2*radio;%Altura para dibujar el tronco
cadera=smooth(cadera);%Suavizamos las grÃ¡ficas
rodilla=smooth(rodilla);
tobillo=smooth(tobillo);
i=1; %Inicializa el contador
a=1;%Marca Cresta
b=5;%Marca Punta Pie
c=1; %Contador
d=1; %Contador
 set(sub1)
           set(sub1,'YLimMode','manual');
           set(sub1,'YLim',[0 estatura*1.1]);
           set(sub1,'XLimMode','manual');
           set(sub1,'XLim',[0 max(x)]);
           set(sub2)
           set(sub2,'YLimMode','manual');
           set(sub2,'YLim',[min(cadera) max(cadera)]);
           set(sub2,'XLimMode','manual');
           set(sub2,'XLim',[0 max(porcentaje)]);
           set(sub3)
           set(sub3,'YLimMode','manual');
           set(sub3,'YLim',[min(rodilla) max(rodilla)]);
           set(sub3,'XLimMode','manual');
           set(sub3,'XLim',[0 max(porcentaje)]);
           set(sub4)
           set(sub4,'YLimMode','manual');
           set(sub4,'YLim',[min(tobillo) max(tobillo)]);
           set(sub4,'XLimMode','manual');
           set(sub4,'XLim',[0 max(porcentaje)]);
           set(sub5)
           set(sub5,'YLimMode','manual');
           set(sub5,'YLim',[min(pendulo) max(pendulo)]);
           set(sub5,'XLimMode','manual');
           set(sub5,'XLim',[0 max(porcentaje)]);
for i=2:1:length(x)/5 %Se divide entre 5 ya que son 5 puntos por frame
    a=5*i-4; %Busca la posiciÃ³n de la marca de la cadera
    b=5*i; %Busca la posiciÃ³n de la marca de la punta del pie
        centro(i)=y(a)+altura;
        centrox=x(a);
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
cabeza=viscircles(sub1,[centrox centro(i)],radio,'color',color,'LineWidth',1/72);
        color=[1 0 120/255];
line(sub2,porcentaje(i-1:i),cadera(i-1:i),'color',color);
if i==minimos2(c) || minimos2(c)==1 %Cada if aÃ±ade una marca para indicar el inicio/fin de la zancada
    axes(sub2);
            xline(300*i/length(porcentaje),'--',{'Inicio/Fin','Zancada'},'Color',[1 1 1]); %Texto fase traslado a la derecha
            xline(300*i/length(porcentaje),'--','Color',[1 1 1]); %Traza la lÃ­nea punteada entre las dos fases
end
line(sub3,porcentaje(i-1:i),rodilla(i-1:i),'color',color);
if i==minimos2(c) || minimos2(c)==1 
    axes(sub3);
             xline(300*i/length(porcentaje),'--',{'Inicio/Fin','Zancada'},'Color',[1 1 1]); %Texto fase traslado a la derecha
            xline(300*i/length(porcentaje),'--','Color',[1 1 1]); %Traza la lÃ­nea punteada entre las dos fases
end
line(sub4,porcentaje(i-1:i),tobillo(i-1:i),'color',color);
if i==minimos2(c) || minimos2(c)==1
    axes(sub4);
            xline(300*i/length(porcentaje),'--',{'Inicio/Fin','Zancada'},'Color',[1 1 1]); %Texto fase traslado a la derecha
            xline(300*i/length(porcentaje),'--','Color',[1 1 1]); %Traza la lÃ­nea punteada entre las dos fases
end
line(sub5,porcentaje(i-1:i),pendulo(i-1:i),'color',color);
if i==minimos2(c) || minimos2(c)==1
    axes(sub5);
            xline(300*i/length(porcentaje),'--',{'Inicio/Fin','Zancada'},'Color',[1 1 1]); %Texto fase traslado a la derecha
            xline(300*i/length(porcentaje),'--','Color',[1 1 1]); %Traza la lÃ­nea punteada entre las dos fases
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
        delete(h); %AquÃ­ se borran las marcas para mantener solo la actual
        delete(tronco);
        delete(brazo);
        delete(antebrazo);
        delete(cabeza);
      
        end
     end
end
        


   elseif yyy==3  %En caso de que sea uno, cuado se presione el botón de inicio cmz se iniciará el proceso relativo a la sección MARCHA SIMULADA
           fprintf('Hola 3')
           
           sub1=handles.emg_g1;
           sub2=handles.caderis;
           sub3=handles.rodillis;
           sub4=handles.tobillis;
           sub5=handles.pendulis;
           zancadas=str2num(get(handles.tiempito,'string'));
           [sub1,sub2,sub3,sub4,sub5,X,Y,x,estatura,cadera,tiempo,rodilla,tobillo,pendulo]=marchaproducida(zancadas,sub1,sub2,sub3,sub4,sub5)
%           axes(sub1);
%           
% title('Stickbar');
% axis([0 max(X) 0 estatura*1.1]);
% set(gca,'Color','k'); %Fondo negro
% xlabel('Metros'); %Etiqueta eje x
% ylabel('Metros'); %Etiqueta eje y
           set(sub1)
           set(sub1,'YLimMode','manual');
           set(sub1,'YLim',[0 estatura*1.1]);
           set(sub1,'XLimMode','manual');
           set(sub1,'XLim',[0 max(X)]);
           set(sub2)
           set(sub2,'YLimMode','manual');
           set(sub2,'YLim',[min(cadera) max(cadera)]);
           set(sub2,'XLimMode','manual');
           set(sub2,'XLim',[0 max(tiempo)]);
           set(sub3)
           set(sub3,'YLimMode','manual');
           set(sub3,'YLim',[min(rodilla) max(rodilla)]);
           set(sub3,'XLimMode','manual');
           set(sub3,'XLim',[0 max(tiempo)]);
           set(sub4)
           set(sub4,'YLimMode','manual');
           set(sub4,'YLim',[min(tobillo) max(tobillo)]);
           set(sub4,'XLimMode','manual');
           set(sub4,'XLim',[0 max(tiempo)]);
           set(sub5)
           set(sub5,'YLimMode','manual');
           set(sub5,'YLim',[min(pendulo) max(pendulo)]);
           set(sub5,'XLimMode','manual');
           set(sub5,'XLim',[0 max(tiempo)]);
archivo=fileread('ADRIANA.txt');
archivo=str2num(archivo);
x=archivo(746:1110,1)/360;
y=archivo(746:1110,2)/360;
y=y*-1;
x=x-min(x);
y=y-min(y);
cambiox=zeros(1,(length(x)-5));
cambioy=zeros(1,(length(x)-5));
% zancadas=input('Ingresa el número de zancadas: ','s');
% zancadas=str2num(zancadas);
iniciox=x(1:5);
inicioy=y(1:5);
for k=1:1:360
    cambiox(k)=x(k+5)-x(k);
    cambioy(k)=y(k+5)-y(k);
end
X=1:1:length(cambiox)*zancadas;
Y=1:1:length(cambiox)*zancadas;
tiempo=(5/length(cambiox):5/length(cambiox):zancadas);
cadera=1:1:length(X)/5; %Se crean los vectores desde el inicio para asegurarnos que cuadren las dimensiones
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
  deltax=X(5*i-4)-X(5*i-3); %Cateto adyacente
    deltay=Y(5*i-4)-Y(5*i-3); %Cateto opuesto
    hipotenusa=sqrt(deltax^2+deltay^2); %Hipotenusa
    cadera(i)=acosd(deltax/hipotenusa); %Calculamos el ángulo  
       deltax=X(5*i-2)-X(5*i-3); %Reciclamos las variables para el resto de los ángulos
    deltay=Y(5*i-3)-Y(5*i-2);
    hipotenusa=sqrt(deltax^2+deltay^2);
    rodilla(i)=acosd(deltax/hipotenusa);
     deltax=X(5*i)-X(5*i-1); %Volvemos a reciclar las variables
    deltay=Y(5*i)-Y(5*i-1);
    hipotenusa=sqrt(deltax^2+deltay^2);
    tobillo(i)=acosd(deltax/hipotenusa);
        deltax=X(5*i-1)-X(5*i-3); %Cateto
    deltay=Y(5*i-3)-Y(5*i-1); %Cateto
    hipotenusa=sqrt(deltax^2+deltay^2); %Hipotenusa
    pendulo(i)=acosd(deltax/hipotenusa); %Ángulo entre la articulación coxofemoral y la del tobillo
end
cadera=smooth(cadera);
rodilla=smooth(rodilla);
tobillo=smooth(tobillo);
pendulo=smooth(pendulo);
centro=1:1:length(X)/5; %Vector posicion centro de la cabeza
altura=(Y(6)-Y(10))*.75;%Altura para dibujar el tronco
cuello=Y(6)-Y(10)+altura;%Altura para dibujar el cuello
codo=altura/5; %El codo es un triángulo rectángulo, este es el valot de un cateto
centro(1)=cuello*1.05; %Coordenada y de centro de la cabeza en la primera zancada
radio=centro(1)-cuello; %Radio de la cabeza
estatura=cuello+2*radio;%Altura para dibujar el tronco
%cadera=smooth(cadera);%Suavizamos las gráficas
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
a=1;
b=5;
color=[1 0 0];
centro(1)=Y(a)+altura;
punto=[X(a),centro(1)+radio];
tronco=line(sub1,[X(a) X(a)],[Y(a) Y(a)+altura],'color',color); %Plotea dorso
brazo=line(sub1,[X(a) X(a)-codo],[Y(a)+altura*.8 Y(a)+altura*.5],'color',color); %Plotea brazo
antebrazo=line(sub1,[X(a)-codo X(a)+.2*codo],[Y(a)+altura*.5 Y(a)+altura*.5],'color',color);%Plotea antebrazo
cabeza=viscircles(sub1,punto,radio,'color',color,'LineWidth',1/72);
inferior=line(sub1,X(a:b),Y(a:b),'color',color);
color=[1 0 0];
pause(1/60);
for i=2:1:zancadas*length(cambiox)/5
    a=5*i-4;
    b=5*i;
    if i==2 || mod(i,length(cambiox)/5)==0
        marcas(sub1,sub2,sub3,sub4,sub5,i,X,cambiox);
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
tronco=line(sub1,[X(a) X(a)],[Y(a) Y(a)+altura],'color',color); %Plotea dorso
brazo=line(sub1,[X(a) X(a)-codo],[Y(a)+altura*.8 Y(a)+altura*.5],'color',color); %Plotea brazo
antebrazo=line(sub1,[X(a)-codo X(a)+.2*codo],[Y(a)+altura*.5 Y(a)+altura*.5],'color',color);%Plotea antebrazo
cabeza=viscircles(sub1,punto,radio,'color',color,'LineWidth',1/72);
inferior=line(sub1,X(a:b),Y(a:b),'color',color);
color=[1 0 0];
line(sub2,[tiempo(i-1) tiempo(i)],[cadera(i-1) cadera(i)],'color',color);
line(sub3,[tiempo(i-1) tiempo(i)],[rodilla(i-1) rodilla(i)],'color',color);
line(sub4,[tiempo(i-1) tiempo(i)],[tobillo(i-1) tobillo(i)],'color',color);
line(sub5,[tiempo(i-1) tiempo(i)],[pendulo(i-1) pendulo(i)],'color',color);
    pause(1/60);
end

   end




   
   
   

% --- Executes during object creation, after setting all properties.
function cmz_CreateFcn(hObject, eventdata, handles)
    set(hObject,'visible','off')
    hObject.UserData=0;    


    
    
    
    
    
    
    
% --- Executes during object creation, after setting all properties.
function emg_g1_CreateFcn(hObject, eventdata, handles)
set(hObject,'visible','off')

% --- Executes during object creation, after setting all properties.
function emg_g2_CreateFcn(hObject, eventdata, handles)
set(hObject,'visible','off')


% --- Executes during object creation, after setting all properties.
function emg_g3_CreateFcn(hObject, eventdata, handles)
set(hObject,'visible','off')





% --- Executes during object creation, after setting all properties.
function text2_CreateFcn(hObject, eventdata, handles)

    set(hObject,'visible','off');



function tiempito_Callback(hObject, eventdata, handles)
% hObject    handle to tiempito (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tiempito as text
%        str2double(get(hObject,'String')) returns contents of tiempito as a double


% --- Executes during object creation, after setting all properties.
function tiempito_CreateFcn(hObject, eventdata, handles)
set(hObject,'visible','off');


if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function com_Callback(hObject, eventdata, handles)
% hObject    handle to com (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of com as text
%        str2double(get(hObject,'String')) returns contents of com as a double



% --- Executes during object creation, after setting all properties.
function com_CreateFcn(hObject, eventdata, handles)
set(hObject,'visible','off');


% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end








% --- Executes during object creation, after setting all properties.
function TDT_CreateFcn(hObject, eventdata, handles)
set(hObject,'visible','off');



% --- Executes during object creation, after setting all properties.
function TDC_CreateFcn(hObject, eventdata, handles)
set(hObject,'visible','off');



% --- Executes during object creation, after setting all properties.
function TDM_CreateFcn(hObject, eventdata, handles)
set(hObject,'visible','off');



% --- Executes during object creation, after setting all properties.
function TDP_CreateFcn(hObject, eventdata, handles)
set(hObject,'visible','off');


% --- Executes during object creation, after setting all properties.
function TDZ_CreateFcn(hObject, eventdata, handles)
set(hObject,'visible','off');

% --- Executes during object creation, after setting all properties.
function caderis_CreateFcn(hObject, eventdata, handles)
set(hObject,'visible','off');


% --- Executes during object creation, after setting all properties.
function rodillis_CreateFcn(hObject, eventdata, handles)
set(hObject,'visible','off');


% --- Executes during object creation, after setting all properties.
function tobillis_CreateFcn(hObject, eventdata, handles)
set(hObject,'visible','off');


% --- Executes during object creation, after setting all properties.
function pendulis_CreateFcn(hObject, eventdata, handles)
set(hObject,'visible','off');


% --- Executes during object creation, after setting all properties.
function imboni_CreateFcn(hObject, eventdata, handles)

set(hObject,'visible','off');



function TDAA_Callback(hObject, eventdata, handles)
% hObject    handle to TDAA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TDAA as text
%        str2double(get(hObject,'String')) returns contents of TDAA as a double


% --- Executes during object creation, after setting all properties.
function TDAA_CreateFcn(hObject, eventdata, handles)
set(hObject,'visible','off');

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function TDA_CreateFcn(hObject, eventdata, handles)
set(hObject,'visible','off');


% --- Executes during object creation, after setting all properties.
function testog1_CreateFcn(hObject, eventdata, handles)
set(hObject,'visible','off');


% --- Executes during object creation, after setting all properties.
function testog2_CreateFcn(hObject, eventdata, handles)
set(hObject,'visible','off');


% --- Executes during object creation, after setting all properties.
function testog3_CreateFcn(hObject, eventdata, handles)
set(hObject,'visible','off');


% --- Executes during object creation, after setting all properties.
function KK1_CreateFcn(hObject, eventdata, handles)
set(hObject,'visible','off');


% --- Executes during object creation, after setting all properties.
function KK2_CreateFcn(hObject, eventdata, handles)
set(hObject,'visible','off');


% --- Executes during object creation, after setting all properties.
function KK3_CreateFcn(hObject, eventdata, handles)
set(hObject,'visible','off');


% --- Executes during object creation, after setting all properties.
function KK4_CreateFcn(hObject, eventdata, handles)
set(hObject,'visible','off');


