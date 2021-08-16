-- Verifica se o numero é primo
eNumeroPrimo :: Int -> Bool
eNumeroPrimo 1 = False
eNumeroPrimo 2 = True
eNumeroPrimo n
  | length [x | x <- [2 .. n - 1], mod n x == 0] > 0 = False
  | otherwise = True

-- Exemplo de lista dinamica
teste :: Int -> [Int]
teste n = [x | x <- [0 .. n]]

-- a função filter recebe uma função como condição do filtro
filtrarNumerosPrimos :: [Int] -> [Int]
filtrarNumerosPrimos [] = []
filtrarNumerosPrimos (x : xs) = filter eNumeroPrimo (x : xs)
