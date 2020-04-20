%1 limpiamos nuestro espacio de trabajo
close all; clc; clear; 
%Practica # 3
%2
load matricesPr3.mat;
%3
plotClasses(X,y);
%4
plotClasses(X,y);
%5
plotClasses(X2,y2);
%6
matrizconf=confusionmat(y_animals,yhat_animals,'Order',[-1,0,1]);
grafmatr=confusionchart(matrizconf);
etiquetas=grafmatr.ClassLabels;
matrizanimals=grafmatr.NormalizedValues
%7
%computeMCE(y,yhat);
%8
computeMCE(y_animals,yhat_animals);
%9
%computeCPM(grafmatr,2)
%10
matconfy3=confusionmat(y3,yhat3);
grafmy3=confusionchart(matconfy3);
%matrizy3=grafmy3.NormalizedValues
%dadad=grafmy3.Position();
%11
computeCPM(grafmy3,1)

