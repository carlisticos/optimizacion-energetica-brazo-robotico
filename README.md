# Del torque al vatio

### Optimización energética en brazo robótico (CERES · MATLAB)

Simulación en MATLAB/Simulink del brazo robótico de CERES (URC) para encontrar la ruta más eficiente en energía, a partir del torque y la potencia de cada motor.

Este repositorio documenta, en español, lo que voy aprendiendo para lograrlo: matrices de rotación, cinemática, trayectorias, dinámica y torques.

Está escrita para que la pueda leer alguien que **no** sabe del tema: primero la intuición, luego la fórmula, luego un ejemplo con números y por último el código.

> Son apuntes personales en construcción. Pueden tener errores; si ves uno, abre un *issue*.

## Cómo leerlo

Cada carpeta es una fase y se recomienda leerlas en orden. Dentro de cada una hay un archivo por tema. La bitácora cronológica de las sesiones está en [`diario.md`](diario.md).

| Fase | Carpeta | Tema | Referencia |
|---|---|---|---|
| 1 | [`01-rotaciones-y-htm`](01-rotaciones-y-htm/) | Posición, orientación, matrices de rotación y homogéneas | Corke cap. 2 |
| 2 | [`02-dh-y-cinematica`](02-dh-y-cinematica/) | Denavit-Hartenberg, cinemática directa e inversa | Corke cap. 7 |
| 3 | [`03-cad-solidworks-a-matlab`](03-cad-solidworks-a-matlab/) | Importar el CAD del brazo a MATLAB | Documentación de MathWorks |
| 4 | [`04-trayectorias`](04-trayectorias/) | Polinomio quíntico, trapezoidal, espacio articular vs cartesiano | Corke 3.1 y 7.4 |
| 5 | [`05-jacobiano-dinamica-energia`](05-jacobiano-dinamica-energia/) | Jacobiano, torques, dinámica, reductores y energía | Corke caps. 8 y 9 |

## Convenciones usadas

- Ángulos de Euler: **ZYZ**. Roll-pitch-yaw: **XYZ** (R = Rx·Ry·Rz), como en la 1.ª edición de Corke.
- Denavit-Hartenberg estándar: Rz(θ)·Tz(d)·Tx(a)·Rx(α).
- Orden de columnas DH: Corke `[θ d a α]`, MathWorks `[a α d θ]`.
- Jacobiano: Corke `[v; ω]`, MathWorks `geometricJacobian` `[ω; v]`.
- Las funciones propias de rotación se llaman `Rx`, `Ry`, `Rz` (MATLAB ya trae `rotx` y similares, que usan grados).
- Las fórmulas usan LaTeX de GitHub (`$...$`).

## Fuente principal

P. Corke, *Robotics, Vision and Control*, 1.ª ed., Springer STAR 73, 2011. Los apuntes están escritos con mis palabras y mis propios ejemplos; no reproducen texto ni figuras del libro.

## Cómo agregar una nota

Copia [`_plantilla/nota.md`](_plantilla/nota.md) a la carpeta de la fase correspondiente y llénala.
