import Data.Array

-- vamos criar um array que tenha 1 linha e 4 colunas
getArray = array (1, 4) [(1, 'A'), (2, 'B'), (3, 'C'), (4, 'D')]

-- Para capturar um elemento em uma posição especifica, usamos o !
primeiroElemento = getArray ! 1

segundoElemento = getArray ! 1

-- Quais são os limites do array (linhas, colunas)
limitesDoArray = bounds getArray

-- Criar matriz 2x2
getArray2 = array ((1, 1), (2, 2)) [((1, 1), 'A'), ((1, 2), 'B'), ((2, 1), 'C'), ((2, 2), 'D')]

elementos = elems getArray