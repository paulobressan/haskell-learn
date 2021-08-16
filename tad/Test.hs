module Test where

import Fila
import System.Directory (removeFile)

showFila :: Fila t -> [t]
showFila fila
  | filaVazia fila = []
  | otherwise = primeiroElemento fila : showFila (removerFila fila)

topo :: Fila t -> t
topo = primeiroElemento