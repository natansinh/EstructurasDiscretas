data Entero = Zero | Succ Entero | Neg Entero deriving (Eq, Show)

{-
 Función: sumaEnt
 Descripción: Calcula la suma de dos enteros
 Uso 1: sumaEnt (Succ (Succ ( Succ Zero))) (Neg ( Succ ( Succ Zero))) = Succ Zero
 Uso 2: sumaEnt (Neg(Succ (Succ ( Succ Zero)))) (Neg ( Succ ( Succ Zero))) = Neg (Succ (Succ (Succ (Succ (Succ Zero)))))
-}
sumaEnt :: Entero -> Entero -> Entero
-- Casos Base
sumaEnt Zero m = m
sumaEnt n Zero = n
-- Casos Recursivos
sumaEnt (Succ n) (Succ m) = Succ (sumaEnt n (Succ m))
sumaEnt (Neg n) (Neg m) = Neg (sumaEnt n m)
sumaEnt (Succ n) (Neg m) = sumaEnt n m
sumaEnt (Neg n) (Succ m) = sumaEnt n m

{-
Función: restaEnt 
Descripción: Calcula la resta de dos enteros.
-}
restaEnt :: Entero -> Entero -> Entero
-- Casos Base
restaEnt n Zero = n
restaEnt Zero (Succ m) = Neg (Succ m)
restaEnt Zero (Neg m) = Succ m

-- Casos Recursivos
restaEnt (Succ n) (Succ m) = restaEnt n m
restaEnt (Neg n) (Neg m) = restaEnt m n
restaEnt (Succ n) (Neg m) = Succ (sumaEnt n (Succ m))
restaEnt (Neg n) (Succ m) = Neg (sumaEnt n (Succ m))

{- Función: negEnt
Descripción: auxiliar para restar a Zero.
-}
negEnt :: Entero -> Entero
negEnt Zero = Zero
negEnt (Succ n) = Neg (negEnt n)
negEnt (Neg n)  = Succ (negEnt n)

{- Función: multiEnt
Descripción: Calcula la multiplicación de dos Enteros.
Uso: multiEnt ( Neg ( Succ ( Succ ( Succ ( Succ Zero ) ) ) ) ) ( Succ (Succ Zero ) ) = multiEnt ( Neg ( Succ ( Succ ( Succ ( Succ Zero ) ) ) ) ) ( Succ (
Succ Zero ) )
-}
multiEnt :: Entero -> Entero -> Entero
-- Casos base 
multiEnt Zero m = Zero
multiEnt n Zero = Zero
-- Casos recursivos
multiEnt (Succ n) (Succ m) = sumaEnt (Succ m) (multiEnt n (Succ m))
multiEnt (Neg n) (Neg m) = multiEnt n m
multiEnt (Succ n) (Neg m) = Neg (multiEnt (Succ n) m)
multiEnt (Neg n) (Succ m) = Neg (multiEnt n (Succ m))
