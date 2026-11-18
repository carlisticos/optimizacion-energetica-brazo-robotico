% ej1_cambio_de_marco.m
% Aplica la fórmula completa de cambio de marco en 2D:
%   Ap = R * Bp + t
% Caso: B girado 90 grados respecto a A, con origen en (2,1).
% Punto dado en B: Bp = (1,1). Resultado esperado: Ap = (1,2).

theta = pi/2;
R  = R2(theta);     % orientación de B respecto a A
t  = [2; 1];        % origen de B visto desde A (columna)
Pb = [1; 1];        % punto en coordenadas de B (columna)

Pa = R*Pb + t;      % fórmula: Ap = R*Bp + t
disp('Punto en A:');
disp(Pa)            % -> [1; 2]
