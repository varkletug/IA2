function [yhat] = myMcC_P(X, w, Theta)
        S=X*w;
        %display(S);
        yhat=S;
        yhat(yhat>Theta)=1;
        yhat(yhat ~= 1)=0;
        %display(yhat);
                 %  ~= 1 diferente de 1
end