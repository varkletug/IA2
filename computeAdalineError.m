function r = computeAdalineError(y,yhat)
   dif=y-yhat;
   dif=dif.*dif;
   %dif=dif.^2;
   suma=sum(dif);
   r=suma/2;
end