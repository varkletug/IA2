function [X,y] = plotClasses(X,y)
    a1=X(:,1);
    a2=X(:,2);
    b1=a1(:);
    b2=a2(:);
    b3=y(:);
    c = linspace(1,10,length(b1));
    s= scatter(b1, b2, [], b3, 'filled')
end