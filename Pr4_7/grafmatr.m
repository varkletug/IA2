function [grafmatr] = grafmatr(y,yhat)
 matrizconf=confusionmat(y,yhat,'Order',[0,1]);
grafmatr=confusionchart(matrizconf);
etiquetas=grafmatr.ClassLabels;
matrizan=grafmatr.NormalizedValues
end