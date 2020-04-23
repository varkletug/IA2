function [X, y, yhat] = plotClasses_McC_P(X, y, yhat)
   Xa=X(:,1);
   Xb=X(:,2);
   Xc=Xa(:);
   Xd=Xb(:);
   yr=y(:);
   yhat1=yhat(:);
  % colors = {'k', 'r'};
   for i=1:length(yr)
         graf2= scatter(Xc,Xd,[],yr,'o');
         hold on;
         graf1= scatter(Xc,Xd,[],yhat1,'x');
        hold on;
        legend('Precicho', 'Real')
   end
  
end