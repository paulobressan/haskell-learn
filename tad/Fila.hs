module Fila where

-- Criando uma estrutura de dados com valor generico
data Fila t = F [t]
  deriving (Show)

getFila = F [1, 2, 3, 4]

novaFila :: Fila t
novaFila = F []

inserirFila :: Fila t -> t -> Fila t
inserirFila (F lista) n = F (lista ++ [n])

removerFila :: Fila t -> Fila t
removerFila (F []) = error "fila vazia"
removerFila (F (x : xs)) = F xs

primeiroElemento :: Fila t -> t
primeiroElemento (F []) = error "fila vazia"
primeiroElemento (F (x : xs)) = x

filaVazia :: Fila t -> Bool
filaVazia (F []) = True
filaVazia _ = False

data Teste t = Teste1 String t | Teste2 Int t

meuTeste1 :: Teste Int
meuTeste1 = Teste1 "Ola" 1

meuTeste2 :: Teste String
meuTeste2 = Teste2 1 "Ola"
