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

--Ejercicio 8
{-Función: imc
Descripción; Caulcula el Ídice de Masa Corporal a partir del peso en kilogramos y la estatura en centímetros o metros, devolviendo la categoría de la OMS: bajo, normal, sobrepeso u obesidad.
Uso: imc 53.5 161 = normal
-}
imc :: Float -> Float -> String
imc kg estatura = 
  let m = if estatura > 3.0 then estatura / 100.0 else estatura
      valorImc = kg / (m * m)
  in if valorImc < 18.5
     then "bajo"
     else if valorImc < 25.0
          then "normal"
          else if valorImc < 30.0
               then "sobrepeso"
               else "obesidad"

-- Ejercicio 9
{-Función: Hipotenusa
Descripción: Calcula la hipotenusa de un triángulo rectángulo dadas su base y su altura.
Uso: hipotenusa 9.0 12.0 = 15
-}
hipotenusa :: Float -> Float -> Float
hipotenusa b h = sqrt (b^2 + h^2)

--Ejercicio 10
{-Función: PuntosRifa
Descripción:Calcula los puntos de un boleto de tres dígitos asignando 10 puntos por suma de dígitos si empieza con par, o 5 puntos si empieza con impar.
Uso: PuntosRifa 248 = 140 / PuntosRifa 315 = 45
-}
puntosRifa :: Int -> Int
puntosRifa n =
    let c = div n 100
        d = mod (div n 10) 10
        u = mod n 10
        suma = c + d + u
        factor = if even c then 10 else 5
    in suma * factor

--Ejercicio 11        
{-Función: cuadrante
Descripción: Determina el cuadrante (1, 2, 3 o 4) en el plano cartesiano donde se ubica el punto (x, y)
Uso: cuadrante (-2.5) 4.1
-}
cuadrante :: Float -> Float -> Int
cuadrante x y =
 if x > 0 && y > 0 then 1
 else if x < 0 && y > 0 then 2
 else if x < 0 && y < 0 then 3
 else 4