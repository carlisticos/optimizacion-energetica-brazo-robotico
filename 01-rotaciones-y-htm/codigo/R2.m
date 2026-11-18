function R = R2(theta)
% R2  Matriz de rotación 2D.
%   R = R2(theta) devuelve la matriz 2x2 de rotación para un ángulo
%   theta en RADIANES.
    R = [cos(theta) -sin(theta); sin(theta) cos(theta)];
end
