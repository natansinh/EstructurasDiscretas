module Auxiliar where

{-Para los Números Naturales
-}
data Natural = Cero | S Natural deriving (Eq, Show)

{-Para los Números Enteros
-}
data Entero = Zero | Succ Entero | Neg Entero deriving (Eq, Show)
{-Para Mati
-}
data Matrioska = Mati | Cont Matrioska deriving (Eq, Show)