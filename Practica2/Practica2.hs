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
Uso: cashbackMonto 264 = 26.4
-}
cashbackMonto :: Float -> Float -> Float
cashbackMonto puntos tasa = puntos * tasa