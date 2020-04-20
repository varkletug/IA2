function [X] = myTriplicator(M,A)
    if not(isequal(size(A), size(M)))
    fprintf("Las dimensiones de M y A no son iguales\n");
    return;
    end
  X = A + 2*(M.*A);
  display(X);
end