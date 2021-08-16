-- IO é o tipo que definimos quando temos que ter entrada e saida externas do software.
-- Ele é uma monada, ou seja, ele tem operações monadicas para processar algo e assim produzir valores, resultados, etc
main :: IO ()
main = do
  putStr "Digite o primeiro número: "
  n1 <- getLine
  putStr "Digite o segundo número: "
  n2 <- getLine
  print ("Soma: " ++ show (read n1 + read n2))
