-- Criando um modulo
module Funcoes (ehPar, ehImpar) where

ehPar :: Int -> Bool
ehPar n
  | (mod n 2 == 0) = True
  | otherwise = False

ehImpar :: Int -> Bool
ehImpar n
  | (mod n 2 == 0) = False
  | otherwise = True

funcaoPrivada :: [Char]
funcaoPrivada = "privada"