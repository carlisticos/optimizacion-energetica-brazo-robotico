# Bitácora de estudio

Una entrada por sesión, la más reciente arriba. Los detalles viven en las notas de cada fase; aquí solo queda el registro.

## 2026-11-17

- **Fase:** 1, rotaciones y matrices homogéneas.
- **Temas cubiertos:** marcos de referencia, pose, cómo se escribe un punto dentro de un marco, el cambio de marco con rotación + traslación, cómo se arma y se lee la matriz de rotación 2D, la deducción de R(θ) con senos y cosenos, el significado de la matriz (diccionario de ejes / traductor de coordenadas) y sus tres propiedades.
- **Práctica a mano:** cambio de marco con B girado 90° (casos ${}^{B}p=(1,0)$ y $(1,1)$) y lectura de matrices al revés (identidad, 90° horario, 180°).
- **Código en MATLAB:** función `R2.m` (rotación 2D), `test_R2.m` (verifica las 5 propiedades, todas pasan) y `ej1_cambio_de_marco.m` (aplica la fórmula completa y da $(1,2)$).
- **Notas creadas:** [Marcos de referencia, pose y matriz de rotación 2D](01-rotaciones-y-htm/01-marcos-pose-y-rotacion-2d.md), con las figuras 1 y 2.
- **Siguiente sesión:** matriz homogénea 2D (rotación + traslación en un solo producto, Corke 2.7–2.10) y paso a 3D.
