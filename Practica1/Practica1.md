# Cuestionario Práctica 01

## 1. ¿Cuáles son las principales diferencias entre Haskell y Rust?

Aunque ambos son lenguajes modernos orientados a la seguridad del código, sus enfoques y paradigmas son distintos:
 Haskell es un lenguaje puramente funcional, lo que significa que el cálculo se realiza evaluando funciones matemáticas sin estados cambiantes ni efectos secundarios implícitos. Rust es un lenguaje multiparadigma(orientado a objetos, funcional y estructurado) enfocado principalmente en el desarrollo de sistemas.

 Haskell utiliza un "recolector de basura" (Garbage Collector) en tiempo de ejecución para gestionar la memoria automáticamente. Rust utiliza un sistema de "propiedad y préstamos" (Ownership and Borrowing) verificado en tiempo de compilación (Borrow Checker), lo que le permite gestionar la memoria de forma segura sin necesidad de un *Garbage Collector*.

 Haskell utiliza "evaluación perezosa" (lazy evaluation), calculando las expresiones solo cuando su resultado es estrictamente necesario. Rust utiliza "evaluación estricta" (eager evaluation), donde los argumentos se evalúan en el momento en que son pasados a las funciones.

## 2. ¿Por qué Haskell no ha alcanzado una adopción significativa en la industria del software?

A pesar de sus sólidas bases académicas, Haskell no predomina en la industria masiva debido a estos principales factores:

Exige un cambio drástico en la forma de pensar en comparación con lenguajes imperativos (Java, C++, Python), requiriendo un entendimiento sólido de abstracciones matemáticas avanzadas como mónadas, functores y teoría de categorías.

 La mayoría de la infraestructura tecnológica, bibliotecas comerciales y marcos de trabajo existentes fueron construidos para paradigmas imperativos u orientados a objetos.

Existe una menor oferta de desarrolladores en comparación con otros lenguajes, lo que dificulta a las empresas encontrar talento capacitado y reduce el interés por adoptar Haskell en proyectos comerciales a gran escala.

## 3. Si tuvieras que explicarle a una persona que no es de Ciencias de la Computación la función que cumple Git frente a la de GitHub, ¿cómo se lo explicarías?

"Imagina que estás escribiendo un libro importante en tu computadora:

Git es como la función de "Guardar historial de cambios" instalada directamente en tu procesador de textos personal. Te permite guardar versiones de tu manuscrito (Capítulo 1 borrador, Capítulo 1 revisado), ver qué eliminaste ayer y volver a una versión previa en caso de cometer un error, todo dentro de tu propia computadora sin necesidad de internet.
GitHub es como una nube (similar a Google Drive o Dropbox) donde subes una copia de tu libro con todas sus versiones guardadas. Sirve para que otras personas puedan entrar desde sus casas, leer lo que has escrito, sugerir correcciones o trabajar en otros capítulos al mismo tiempo sin arruinar tu copia original.

---

## Referencias (APA 7)

* Serokell. (2020, 20 de agosto). *Haskell: A Functional Love Story*. Serokell Software Development. https://serokell.io/blog/haskell-love-story
* Marin, E. (2021, 14 de marzo). *What haskellers do not want you to know*. DEV Community. https://dev.to/estebanmarin/what-haskellers-do-not-want-you-to-know-134m
* Chacon, S., & Straub, B. (2014). *Pro Git* (2a ed.). Apress. https://git-scm.com/book/en/v2