data Natural = Cero | S Natural deriving (Eq, Show)

{- 
Función: a_natural
Descripción: La función toma un entero positivo y lo lleva a su estructura natural
Uso: a_natural = S (S Cero)
-}
a_natural :: Int -> Natural
-- Caso base
a_natural 0 = Cero
-- Caso recursivo
a_natural n = S (a_natural (n - 1))

{- Función: a_entero
Descripción: La función toma un dato natural y lo devuelve en su forma entera.
Uso: a_entero (S (S (S Cero))) = 3
-}
a_entero :: Natural -> Int 
-- Caso base
a_entero Cero = 0
-- Caso recursivo
a_entero (S n) = 1 + a_entero (n)