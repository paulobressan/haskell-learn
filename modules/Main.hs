module Main where

import Funcoes ( ehPar, ehImpar )

testePar :: Int -> Bool
testePar = ehPar

testeImpar :: Int -> Bool
testeImpar = ehImpar

main :: IO ()
main = do
  print (testePar 2)
  print (testeImpar 2)
