## Objetivo
Aprender la sintaxis básica del lenguaje Haskell, utilizando el entorno interactivo GHCI para definir y evaluar funciones elementales, condicionales y el manejo de tuplas.

## Tiempo requerido en realizar la práctica completa
tiempo total: 3 horas y 15 minutos aproximadamente

## Comentarios y problemas a los que te enfrentaste en la práctica con su respectiva solución
1. Al principio no conocía con precisión el uso de los tipos de datos primarios en Haskell (Int, Float, String, Bool) ni el comportamiento estricto de sus funciones asociadas (por ejemplo, las diferencias entre la división flotante / y la división entera div).
Solución: Consulté la documentación para identificar las firmas de tipos correctas y cómo convertir o manejar cada dato según los requerimientos de cada función.

2. Carga y compilación en el directorio incorrecto: En ocasiones intentaba recargar o probar el código dentro del entorno interactivo de GHCi sin haber cargado previamente el archivo correspondiente del proyecto.
Solución: Especifiqué la ruta exacta del módulo dentro de GHCi utilizando el comando `:l Practica2.hs`, asegurando que el archivo Practica2.hs estuviera vinculado correctamente en la sesión activa. 

3. Estructura de sangría y sintaxis de bloques (Indentación): Tuve errores de sintaxis debido a la regla de indentación estricta de Haskell, especialmente al alinear declaraciones múltiples dentro de bloques let ... in o estructuras if-then-else.
Solución: Atendí minuciosamente los mensajes de error mostrados por el compilador en la terminal de GHCi, alineando verticalmente las variables locales en la misma columna dentro de los bloques para respetar las reglas sintácticas del lenguaje.

![Carga de archivo en GHCi](GHCI.png)