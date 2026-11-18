# Fase 1: rotaciones y matrices homogéneas

Referencia: Corke cap. 2.

Temas previstos (se enlazan a medida que existan las notas):

1. Pose, posición y orientación; marcos de referencia
2. Matriz de rotación 2D
3. Matrices de rotación 3D: Rx, Ry, Rz
4. Composición y por qué importa el orden
5. Ángulos de Euler y roll-pitch-yaw
6. Cuaterniones (introducción)
7. Matriz homogénea 4×4 y su inversa

## Notas

- [Marcos de referencia, pose y matriz de rotación 2D](01-marcos-pose-y-rotacion-2d.md) — temas 1 y 2 (parte 2D)

## Código

Archivos de MATLAB de esta fase, en [`codigo/`](codigo/):

- `R2.m` — matriz de rotación 2D para un ángulo en radianes.
- `test_R2.m` — verifica las 5 propiedades de `R2` (correr para comprobar).
- `ej1_cambio_de_marco.m` — aplica la fórmula completa `Ap = R*Bp + t`.
