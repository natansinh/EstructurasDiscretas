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

{-
Función: sumaNat
Descripción: Calcula la suma de dos naturales
Uso 1: sumaNat Cero (S Cero) = S Cero
Uso: sumaNat (S (S (S (Cero)))) (S (S (S (S (Cero))))) = S (S (S (S (S (S (S Cero))))))
-}
sumaNat :: Natural -> Natural -> Natural
sumaNat Cero n = n
sumaNat (S m) n = sumaNat m (S n) 

{-
Función: multiplicaNat
Descripción: Calcula el producto de dos naturales
Uso: multiplicaNat (S (S (S (Cero)))) (S (S (S (S (Cero))))) = S (S (S (S (S (S (S (S (S (S (S (S Cero)))))))))))
-}
multiplicaNat :: Natural -> Natural -> Natural
multiplicaNat Cero n = Cero
multiplicaNat (S m) n =sumaNat n (multiplicaNat n m)

{- Función: potenciaNat
Descripción: La función toma un número natural y devuelve la potencia en natural
Uso: potenciaNat ( S ( S ( S Cero ) ) ) ( S ( S Cero ) ) = S ( S ( S ( S ( S ( S ( S ( S ( S Cero ) ) ) ) ) ) ) )
-}
potenciaNat :: Natural -> Natural -> Natural
-- Casos base
potenciaNat Cero n = Cero
potenciaNat n Cero = S Cero
-- Caso recursivo
potenciaNat n (S m) = multiplicaNat n (potenciaNat n m)
