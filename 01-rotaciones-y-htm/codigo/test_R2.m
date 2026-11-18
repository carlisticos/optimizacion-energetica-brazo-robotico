% test_R2.m: verificaciones de la matriz de rotación 2D
tol = 1e-12;   % cos(pi/2) da ~6e-17, no 0 exacto, por eso se usa tolerancia

% 1) sin giro: tiene que dar la identidad
assert(norm(R2(0) - eye(2)) < tol, 'R2(0) no es la identidad')

% 2) 90 grados: la matriz armada a mano
assert(norm(R2(pi/2) - [0 -1; 1 0]) < tol, 'R2(90) no coincide con la de mano')

% 3) ortonormal: R'*R = I
R = R2(0.7);
assert(norm(R'*R - eye(2)) < tol, 'R no es ortonormal')

% 4) determinante = +1 (rotación, no reflexión)
assert(abs(det(R) - 1) < tol, 'det(R) no es 1')

% 5) devolverse: R(-theta) = R(theta)'
assert(norm(R2(-0.7) - R2(0.7)') < tol, 'R(-t) no es R(t)''')

disp('Todo bien: R2 pasa las 5 pruebas')
