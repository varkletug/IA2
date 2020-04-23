%1 limpiamos nuestro espacio de trabajo
close all; clc; clear; 
%Practica # 7
%2
load matricesPr7.mat;
%3 Escriba una función "myMcC_P (X, w, Theta)", que devuelve un vector de las 
% predicciones dadas para una matriz de datos X por una neurona McCulloch-Pitts 
% con un vector de peso y un umbral Theta. 
% (Desafío: no utilice forloops para escribir esta función).
%myMcC_P(x1,x2,3);
%4En el número 2, cargó cuatro vectores tridimensionales: x1, x2, x3 y x4. 
% Montar una matriz de datos "X1" con estos vectores. 
% Luego, use su función myMcC_P para calcular las 
% predicciones para datos en X1 por una neurona McCulloch-Pitts 
% con umbral θ = 3 y peso w=[2; -1;  -3];'*',
X1=[x1.'; x2.'; x3.'; x4.'];
w1=[2; -1;  -3];
display(X1);
display(w1);
yhat4=myMcC_P(X1,w1,3);
%5 En el número 2, cargó dos vectores 20-D: x5 y x6. Ensamblar un dato
%matriz "X2" con estos vectores, en la forma estándar de aprendizaje automático.
%Luego, use su función myMcC_P para calcular las predicciones para los datos
%en X2 por una neurona McCulloch-Pitts con umbral θ = 1 y vector de peso
%w2, también cargado en el número 2.
 X2=[x5.'; x6.'];
 yhat5=myMcC_P(X2,w2,1);
 %6 En el número 2, cargó una matriz de datos X con vectores de características 2-D,
%  y un vector y de etiquetas reales. Use su función myMcC_P para calcular el
%predicciones para los datos en X por una neurona McCulloch-Pitts con umbral
%θ = 10 y vector de peso w=[2;-1]
w=[2;-1];
yhatX=myMcC_P(X,w,10);
display(yhatX);
%7 Escriba una función "plotClasses_McC_P (X, y, yhat)", que no devuelve
%cualquier cosa menos crea una trama con los vectores de características en X (supongamos
%son 2-D), con las siguientes características: vectores de clase "0",
%negro; clase "1", rojo; clasificación real (dada por las etiquetas en y), círculos;
%clasificación predicha (dada por las etiquetas en yhat), estrellas. Utilizar el
%Leyenda de la función MATLAB para agregar una leyenda a la trama, indicando el real
%y clases predichas. (Puedes ver la respuesta del número 8 para obtener
%una mejor idea de lo que se espera de su función plotClasses_McC_P.)
 
%8 Llame a su función plotClasses_McC_P desde el script, pasando como argumentos
%la matriz X y el vector y mencionado en el número 6, y el vector que se calculó 
% en el mismo número.
yhatX=myMcC_P(X,w,10);
%plotClasses_McC_P(X,y,yhatX);
plotClasses_McC_Pvk(X,y,yhatX);
%9 Error de clasificación
computeMCEr(y,yhatX);
%10 Matrix de Confición
grafmatriz=grafmatr(y,yhatX);
%11 Cuadro de Resultados etiqueta #2 clase #1
matrizan=grafmatriz.NormalizedValues
computeCPMccP(matrizan,2);

 
 


