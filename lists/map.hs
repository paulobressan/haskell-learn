-- A função map transforma um array em outro array

-- Verifica se o numero é primo
eNumeroPrimo :: Int -> Bool
eNumeroPrimo 1 = False
eNumeroPrimo 2 = True
eNumeroPrimo n
  | length [x | x <- [2 .. n - 1], mod n x == 0] > 0 = False
  | otherwise = True

type Valor = Int

type Primo = Bool

type Numero = (Valor, Primo)

getValor :: Numero -> Int
getValor (v, _) = v

listaDeNumeros :: [Int]
listaDeNumeros = [2 .. 100]

setPrimo :: Numero -> Numero
setPrimo (v, primo) = if eNumeroPrimo v then (v, True) else (v, False)

numeros :: [Int] -> [Numero]
numeros [] = []
numeros (x : xs) = map setPrimo [(a, False) | a <- (x : xs)]

{-
Acima é somente um exemplo, porque podemos fazer
numeros :: [Int] -> [Numero]
numeros [] = []
numeros (x : xs) = [setPrimo (a, False) | a <- (x : xs)]
-}