module Practica3 where

import SPB (esParBit)

data Plazo = Dias Float | Meses Float
    deriving (Show, Eq)

{- función: cetes
descripción: calcula el monto final disponible al invertir en Cetes según el plazo seleccionado
uso: cetes 100 (Dias 28) -> 100.473667
-}

cetes :: Float -> Plazo -> Float
cetes vi (Dias t)
    | t == 28   = vi * (1 + 0.0609 * (28 / 360))
    | t == 182  = vi * (1 + 0.0691 * (182 / 360))
    | t == 364  = vi * (1 + 0.0744 * (364 / 360))
    | otherwise = error "Plazo en dias no valido. Use 28, 182 o 364."
cetes vi (Meses m)
    | m == 1    = cetes vi (Dias 28)
    | m == 6    = cetes vi (Dias 182)
    | m == 12   = cetes vi (Dias 364)
    | otherwise = error "Plazo en meses no valido. Use 1, 6 o 12."


{- función: mensajeCetes
descripción: devuelve un mensaje detallado sobre el rendimiento obtenido y el monto acumulado
uso: mensajeCetes 100 (Dias 28) -> "Despues de 28.0 dias, obtuve 0.473667 de rendimiento bruto sin asumir ningun riesgo crediticio. El monto total de mi inversion es de 100.473667."
-}
mensajeCetes :: Float -> Plazo -> String
mensajeCetes vi plazo =
    let vf = cetes vi plazo
        rendimiento = vf - vi
        textoPlazo = case plazo of
            Dias d  -> show d ++ " dias"
            Meses m -> show m ++ " meses"
    in "Despues de " ++ textoPlazo ++ ", obtuve " ++ show rendimiento ++
       " de rendimiento bruto sin asumir ningun riesgo crediticio. El monto total de mi inversion es de " ++ show vf ++ "."

{- función: negativos
descripción: cuenta los números negativos presentes en una lista usando listas por comprensión
uso: negativos [-1, 2, 4, 6, -4] -> 2
-}
negativos :: [Int] -> Int
negativos xs = length [x | x <- xs, x < 0]


{- función: soloPares
descripción: filtra una lista de enteros devolviendo únicamente los elementos pares apoyándose en esParBit
uso: soloPares [1, 2, 3, 4] -> [2, 4]
-}
soloPares :: [Int] -> [Int]
soloPares xs = [x | x <- xs, esParBit x]


{- función: divisores
descripción: función auxiliar que obtiene todos los divisores positivos de un número
uso: divisores 6 -> [1, 2, 3, 6]
-}
divisores :: Int -> [Int]
divisores n = [d | d <- [1..n], n `mod` d == 0]


{- función: esPrimo
descripción: determina si un número es primo verificando que tenga exactamente dos divisores (1 y sí mismo)
uso: esPrimo 7 -> True
-}
esPrimo :: Int -> Bool
esPrimo n = n > 1 && length (divisores n) == 2


{- función: primos
descripción: filtra una lista devolviendo únicamente los números primos que contiene
uso: primos [1..20] -> [2, 3, 5, 7, 11, 13, 17, 19]
-}
primos :: [Int] -> [Int]
primos xs = [x | x <- xs, esPrimo x]


{- función: mcd
descripción: calcula el máximo común divisor entre dos números enteros mediante el algoritmo de Euclides
uso: mcd 10 15 -> 5
-}
mcd :: Int -> Int -> Int
mcd a b
    | b == 0    = abs a
    | otherwise = mcd b (a `mod` b)


{- función: coprimos
descripción: devuelve una lista con todos los números menores o iguales a n que son coprimos con n (mcd igual a 1)
uso: coprimos 10 -> [1, 3, 7, 9]
-}
coprimos :: Int -> [Int]
coprimos n = [x | x <- [1..n], mcd n x == 1]