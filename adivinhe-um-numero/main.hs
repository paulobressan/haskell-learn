-- O 
import System.Random

principal :: IO ()
principal = do
  num <- randomRIO (1 :: Int, 50)
  adivinhar num

adivinhar :: Int -> IO ()
adivinhar num = do
  putStr "Digite um numero entre 1 e 50: "
  n <- getLine
  if read n < num
    then do
      putStrLn "Mais para cima :)"
      adivinhar num
    else
      if read n > num
        then do
          putStrLn "Mais para baixo :)"
          adivinhar num
        else do
          putStrLn "Parabens você acertou :)"