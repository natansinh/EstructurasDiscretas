-- Ejercicio 2: Realiza la reconversión monetaria dividiendo el valor entre 1000.
{- Función: reconversión 
Descripción: realixa la reconversión monetaria quitándole tres ceros al valor ingresados
uso: reconversión 1000 = 1.0 
-}
reconversion :: Float -> Float
reconversion x = x / 1000


-- Ejercicio 3: Calcula el 10% de cashback acumulado en puntos a partir de un monto.
{- Función: cashback
Descripción: Calcula el cashback obtenido de una tarjeta de crédito correspondiente al 10% de puntos
Uso: cashback 2545 = 264
-}
cashback :: Float -> Int
cashback monto = floor (monto * 0.10)

-- Ejercicio 4: Convierte los puntos de cashback a su equivalente en dinero real.
{- Función: cashbackMonto
Descripción:Recibe una cantidad de puntos y el valos equivalentede cada punto para devolver el total en dinero
Uso: cashbackMonto 264 0.10 = 26.4
-}
cashbackMonto :: Float -> Float -> Float
cashbackMonto puntos tasa = puntos * tasa

-- Ejercicio 4: Convierte horas y minutos en texto.
{- Función: minutosHoras
Descripción: Recibe una cantidad de minutos y devuelve su equivalencia en formato de horas y minutos.
Uso: minutosHoras 112 = "1 hora y 52 minutos"
-}
minutosHoras :: Int -> String
minutosHoras mins = show (div mins 60) ++ " hora y " ++ show (mod mins 60) ++ " minutos"

-- Ejercicio 6
{- Función: esEstafa
Descripción: Determina si la maniobra de cambio de billetes por parte del cliente representa una estafa para el comerciante.
Uso: esEstafa 100 200 100 0 = true
-}
esEstafa :: Float -> Float -> Float -> Float -> Bool
esEstafa costo bGrande bChico cambioDevuelto = (bGrande - costo) > cambioDevuelto

-- Ejercicio 7
{- Función: esDescendente
Descripción: Evalúa si cuatro números fueron ingresados de manera estrictamente descendente 
Uso: esDescendente 10 9 8 7 = true 
-}
esDescendente :: Ord a => a -> a -> a -> a -> Bool
esDescendente x y z w = (x > y) && (y > z) && (z > w)