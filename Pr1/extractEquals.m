function [X] = extractEquals(A,B)
   % X = zeros(size(A));
  if not(isequal(size(A), size(B)))
    printf("las dimensiones son inconsistentes");
    return;
  end
  for i = 1:size(A,1)
    for j = 1:size(A, 2)
      if A(i, j) == B(i, j)
        X(i, j) = A(i, j);
      end
    end
  end
  display(X);
end