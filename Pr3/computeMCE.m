function [y,yhat] = computeMCE(y,yhat)
    %UNTITLED Summary of this function goes here
    %   Detailed explanation goes here
    numvect1=length(y);
    numvect2=length(yhat);
    if isequal(numvect1,numvect2)
        [cantidad,posicion]=find(y~=yhat);
        numerox=length(cantidad);
        display(numerox);
        error1=(1/numvect1)*(numerox);
        display(error1);
        else
        print('las dimenciones de los vectores no son igules');
    end
 end