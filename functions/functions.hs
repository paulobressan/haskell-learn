module Main where

factorial :: Int -> Int
factorial n = if n == 0 then 1 else n * factorial (n - 1)

main = do
  putStrLn "What is factorial of 5 or 5! ?"
  x <- readLn
  if x == factorial 5
    then putStrLn "You're right!"
    else putStrLn "You're wrong!"

funcaoNula = null []

ultimoElementoDaLista = last [1, 2, 3, 4]

removerDoisElementosDoInicioDaLista = drop 2 [1, 2, 3, 4]

pegarrDoisElementosDoInicioDaLista = take 2 [1, 2, 3, 4]

listaDeWorlds = words "estou aprendendo haskell"

listaInversa = reverse [1, 2, 3, 4]

replicarValorParaLista = replicate 2 "haskell"

cortarString = splitAt 2 "haskell"

validarComAnd = and [True, True, False]