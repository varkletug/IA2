%1 limpiamos nuestro espacio de trabajo
close all; clc; clear; 
%Practica # 3
%2
load matricesPr1.mat;
%3 Cree una matriz de 100 × 21 (que llamará "A") con lo siguientes 
% características: su primera columna debe contener los enteros del 1 al 100.
% Su las últimas tres columnas deben llenarse con los números "8". 
% El elemento de la 85th fila 12th columna, debe ser −100. 
% El resto de las entradas debe ser cero. (Sugerencia: utilice las funciones
% MATLAB ceros y unos para esta parte. Los dos puntos (:) operador también podría ser útil.)
A = zeros(100, 21);
A(:, 1) = 1:100;
A(:, 19:21) = 8;
A(85, 12) = -100;
display(A);
%4 Cree una matriz "E" de 21 × 500 de la siguiente manera: tome las matrices B y 
% C cargadas en el número 2 y poner uno debajo del otro (C debajo de B) 
% para formar un 21 × 450 matriz "bc". Transponga la matriz D (también cargada
% en el número 2) y colóquela en a la izquierda de la matriz bc para formar la matriz E. 
bc=[B;C];
a=D.';
E=[bc,a];
display(E);
%5 Calcule la multiplicación de la matriz entre A y E y almacénela en una
%variable llamado "F". Si todo va bien, esta variable debería ser una Matriz 100 × 500.
F=A*E;
%display(F);
%6 Busque el elemento en el 54th fila, 374th columna de matriz F:
%(a) Al abrir la matriz, hacer doble clic en su nombre en el Espacio de trabajo
%(b) Escribiendo en la ventana de comandos el código correspondiente para acceder
%elementos. %¿Cuál es el valor almacenado en esta entrada? 788
fprintf('el elemento en el 54th fila, 374th columna de matriz F: ');
display(F(54, 374));
%7 Cree una función "myTriplicator (M, A)" que toma dos de igual tamaño 
% matrices M y A, y devuelve una matriz X también del mismo tamaño. Esta matriz X
%debe contener los mismos elementos de la matriz A (en algunos casos) y
%El triple de los elementos (en el resto de los casos). Matrix M es una especie de
%Matriz de "máscara", y le dice a la función si debe triplicar un elemento dado
%de A (dependiendo de si la entrada correspondiente en M es 1 o 0).
m=[1 0 0; 0 1 1];
n=[1 2 3; 4 5 6];
myTriplicator(m,n);
%8 Llame a su función myTriplicator desde el script, pasando como argumentos
%las matrices M (la cargada en el número 2) y F (creada en el número 5).
%Almacene el resultado en una variable llamada "X_8".
X_8=myTriplicator(M,F);
%9 Utilice la suma de la función MATLAB para calcular la suma de todos 
% los elementos de matriz X_8. −3557364
SumaT=sum(X_8(:));
display(SumaT);
%10 Cree una función "extractEquals (A, B)" que tome dos de igual tamaño
%matrices A y B, y devuelve una matriz X también del mismo tamaño. Para cada uno de
%sus entradas, esta matriz X debe contener un 0 si las entradas correspondientes en
%las matrices A y B son diferentes entre sí. Si estas entradas son iguales,
%la matriz X debe contener ese número repetido.
o=[1 2 3; 4 5 6];
p=[1 8 9; 7 5 4];
extractEquals(o,p);
%11 Llame a su función extractEquals del script, pasando como argumentos
%las matrices F (creadas en el número 5) y G (cargadas en el número 2). Tienda
%el resultado en una variable llamada "X_11".
X_11=extractEquals(F,G);
%12 Utilice la suma de la función MATLAB para calcular la suma de todos los elementos de
%matriz X_11. −174139
v =sum(X_11(:));
display(v);
%13 ¿Cuántos elementos distintos de cero hay en la matriz X_11? (Puedes usar el
%función incorporada nnz aquí.) 5060
u = nnz(X_11);
display(u);
fprintf('el elemento en el 54th fila, 374th columna de matriz F: ');
display(F(54, 374));
%buscar un elemento
[i, j] = find(m==788);
display([i, j]);








