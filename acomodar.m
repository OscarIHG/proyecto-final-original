function archivo=acomodar(archivo);
archivo2=archivo;
for i=1:1:length(archivo)/5
    archivo(5*i-4,1)=archivo2(5*i,1);
    archivo(5*i-3,1)=archivo2(5*i-1,1);
    archivo(5*i-1,1)=archivo2(5*i-3,1);
    archivo(5*i,1)=archivo2(5*i-4,1);
    archivo(5*i-4,2)=archivo2(5*i,2);
    archivo(5*i-3,2)=archivo2(5*i-1,2);
    archivo(5*i-1,2)=archivo2(5*i-3,2);
    archivo(5*i,2)=archivo2(5*i-4,2);
end
archivo(:,2)=archivo(:,2);
end