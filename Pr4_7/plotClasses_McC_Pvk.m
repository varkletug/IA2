function [X, y, yhat] = plotClasses_McC_Pvk(X, y, yhat)
   Xa=X(:,1);
   Xb=X(:,2);
   Xc=Xa(:);
   Xd=Xb(:);
   g = {y,yhat};
gscatter(Xc,Xd,g,'km','*o',8,'on','X1','X2')
legend('Precicho', 'Real')
end