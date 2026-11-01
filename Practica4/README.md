# Práctica 04: Números Naturales y Recursión

## Información general
**Objetivo:** Comprender y aplicar los principios de la inducción estructural y la recursión en Haskell mediante la definición de tipos de datos algebraicos propios (Números Naturales, Enteros y Matrioskas), implementando operaciones aritméticas y de manipulación de estructuras sin recurrir a tipos de datos primitivos nativos para los cálculos base.
**Tiempo requerido:** 3 horas


---

## Cuestionario (Ejercicio 8)
### 1. ¿Cuál es la diferencia de las operaciones implementadas en ambos archivos? ¿Cómo se manejan todos los casos en cada implementación?
Por lo general, las implementaciones directas mediante patrones estructurales evalúan paso a paso los constructores (Zero, recursiones con Succ y Neg), requiriendo considerar los casos combinados de signos (positivo con positivo, negativo con negativo, signos distintos). Las implementaciones alternativas o simplificadas a veces auxilian la lógica mapeando hacia tipos primitivos o funciones auxiliares de valor absoluto para reducir la cantidad de subcasos redundantes.

### 2. ¿Por qué se tiene implementada la operación `mayorEnt` en el archivo `enteros.hs`?
Permite establecer una relación de orden (menor, mayor o igual) entre números con signo, lo cual es indispensable para validar condiciones de paro en funciones recursivas, ordenar colecciones o definir ramas condicionales seguras al operar con enteros negativos y positivos.


### 3. Si pudieras quedarte con una sola implementación. ¿Cuál sería? Justifica tu respuesta.
Aquella que explote de manera directa la definición inductiva de la estructura de datos sin perder legibilidad, ya que mantiene el espíritu de la programación funcional y la demostración formal por inducción estructural vista en clase.