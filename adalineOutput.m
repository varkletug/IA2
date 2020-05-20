function F = adalineOutput(X,w)
    [m,n]=size(X);
    Xaum=[ones(m,1),X];
    s=Xaum*w;
    yhat=s;
    F=yhat;
end