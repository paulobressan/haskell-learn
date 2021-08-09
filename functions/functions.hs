module Main where

factorial :: Int -> Int
factorial n = if n == 0 then 1 else n * factorial (n - 1)

main = do
  putStrLn "What is factorial of 5 or 5! ?"
  x <- readLn
  if x == factorial 5
    then putStrLn "You're right!"
    else putStrLn "You're wrong!"
