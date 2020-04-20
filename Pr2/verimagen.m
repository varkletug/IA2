function [X,z,fila,columna] = encuentralaimagen(X,z,fila,columna)
    imgenencontrada=reshape(z,[fila,columna]);
    imshow(imgenencontrada);
end