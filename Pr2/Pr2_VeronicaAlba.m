%1 limpiamos nuestro espacio de trabajo
close all; clc; clear; 
%Practica # 3
%2
load matricesPr2.mat;
%3 Una de las matrices cargadas en el número anterior se llama Xnum 
% y contiene las imágenes de cuatro números. Cada una de estas imágenes 
% fue originalmente una matriz de 5 × 4 que se ha transformado en un vector 
% de columna de características y luego se transpuso, como se explica en la teoría. 
% Use la función de remodelación para vuelva a armar las matrices y visualícelas 
% usando imshow. Escribir hacia abajo el vector y correspondiente a esta matriz Xnum. 
% (Use como etiquetas el los mismos números que ves cuando visualizas las imágenes)
display(Xnum);
    a=Xnum(1,:);
    b=Xnum(2,:);
    c=Xnum(3,:);
    d=Xnum(4,:);
verimagen(Xnum,a,5,4);
%tres
verimagen(Xnum,b,5,4);
%uno
verimagen(Xnum,c,5,4);
%cuatro
verimagen(Xnum,d,5,4);
%dos
y=[3;1;4;2];
display(y);
%4 Ahora harás todo lo contrario. Matrices im1, im2 e im3, cargadas en el numeral 2, 
% hay imágenes de las letras i, u y c. Montar un "Xletters" matriz con ellos, 
% utilizando el procedimiento estándar descrito en la teoría. Si ha hecho todo bien, 
% Xletters debería ser una matriz de 3 × 30.
%imshow(im3);
e=im1(:);
f=im2(:);
g=im3(:);
prueba=[e,f,g];
Xletters=prueba.';
display(Xletters);
%Comprobar las imagenes
verimagen(Xletters,e,6,5);
verimagen(Xletters,f,6,5);
verimagen(Xletters,g,6,5);
%5 Use suma para calcular la suma de elementos de cada fila de Xletters de matriz.
% Este paso está destinado a verificar si todo se ha hecho correctamente.
sum1=sum(Xletters,2);
display(sum1);
%6 Visualice los datos contenidos en las matrices X1 y X2, cargadas en el
%número 2. Use los comandos MATLAB scatter y scatter3 para esto. 
% Las tramas debe obtener se muestran en las Figuras 2.2 y 2.3
display(X1);
h=X1(:,1);
i=X1(:,2);
scatter(h,i);
display(X2);
j=X2(:,1);
k=X2(:,2);
l=X2(:,3);
%scatter3(j,k,l,'*','g');
%7 En la carpeta Conjuntos de datos encontrará un archivo llamado cars.xlsx.
% Este archivo contiene la información real que recopiló el autor de este 
% libro para comprar una segunda mano coche en 2016. Esta información incluye
% (como puede ver abriendo el archivo en Excel): distancia recorrida, edad, 
% capacidad del motor y precio. Salvar cars.xlsx a la carpeta actual y cárguelo
% usando . Almacenar los datos en una variable llamarás "carData".
carData =xlsread('cars.xlsx');
display(carData);
%8 Forme una matriz "Xcars" que contenga las características de los automóviles.
% Nosotros lo consideraremos aquí como características de la distancia recorrida,
% la edad y la capacidad del motor de los carros. Si todo se hizo bien, debería 
% terminar con una matriz de 16 × 3 en este paso.
Xcars=[carData(:,1) carData(:,2) carData(:,3)];
display(Xcars);
%9 Extraiga un vector "ycars" que contenga las etiquetas de los automóviles. 
% Nosotros lo consideraremos aquí como etiqueta (o, mejor dicho, como la
% variable independiente) el precio de los autos. Si todo se hizo correctamente, 
% debería terminar con un 16 × 1 vector en este paso.
ycars=[carData(:,4)];
display(ycars);
%10 Visualice los datos contenidos en Xcars. Use la subtrama para mostrar 
% tanto el 3-D representación y una vista desde "arriba".
% Puede trazar esta vista usando el Ver función. Agregue etiquetas adecuadas 
% a las parcelas. La trama a la que estás destinado obtener se muestra en la Figura 2.4.
display(Xcars);
m=Xcars(:,1);
n=Xcars(:,2);
o=Xcars(:,3);
scatter3(m,n,o,'*','r');
view(0,90);
ca=xlabel('Distancia Recorrida');
cb=ylabel('Edad');
cc=zlabel('Capaciad del motor');
%11 Visualice las etiquetas (o variable independiente) frente a la 
% primera característica de los datos. Agregue etiquetas adecuadas
% a la trama. La trama que debes obtener se muestra en la Figura 2.5. 
% Al mirar esta trama, deberías poder responde las siguientes preguntas:
% ¿Qué punto corresponde al auto más barato? 
% ¿Cuál es el auto con menos recorrido? 
% ¿Cuál de los autos es más caros y cual de los autos más recorridos?
sz = 50;
c = linspace(1,10,length(m));
scatter(m,ycars,sz,c,'filled');
cd=xlabel('Distancia Recorrida');
ce=ylabel('Precio');
% el auto más barato corresponde(79600,8600) $8600
% el auto con menos recorrido corresponde(41000, 12700) rc 41000
% el auto más caro corresponde(43000,15500) $15500
% el auto más recorrido corresponde(175000,11500) rc 175000


 





