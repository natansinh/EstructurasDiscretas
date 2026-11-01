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