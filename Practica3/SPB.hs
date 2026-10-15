module Paridad (esParBit) where

{- función: esParBit
descripción: determina si un número entero es par utilizando mod
uso: esParBit 4 -> True
-}

esParBit :: Int -> Bool
esParBit n = (n `mod` 2) == 0