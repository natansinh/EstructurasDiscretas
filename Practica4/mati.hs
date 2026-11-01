data Matrioska = Mati | Cont Matrioska deriving (Eq, Show)


{- Función: profundidad
Descripción: recibe una Matrioska y un número para devolver la posición de la Matrioska dentro de las demás.
Uso: profundidad (Cont (Cont Mati)) = 2 
-}
profundidad :: Matrioska -> Int
-- Caso base
profundidad Mati = 0
-- Caso recursivo
profundidad (Cont m) = 1 + profundidad m

{- Función: mayorIgual
Descripción: Compara a dos Matrioskas y devuelve la Matrioska que está dentro
Uso: mayorIgual Mati Mati = True
-}
mayorIgual :: Matrioska -> Matrioska -> Bool
mayorIgual m1 m2 = profundidad m1 >= profundidad m2

{-Función: aplana
Descripción: La función recibe una Matrioska y devuelve la cantidad de Matrioskas que la componen.
Uso: aplana ( Cont ( Cont Mati ) ) = [ Cont ( Cont Mati ) , Cont Mati Mati ]
-}
aplana :: Matrioska -> [Matrioska]
-- Caso base
aplana Mati = [Mati]
-- Caso recursivo
aplana (Cont m) = Cont m : aplana m