-- Todas lista tem o head e o tail

-- O primeiro caso da função é se a for uma list vazia vamos retornar que o tamanho é 0
-- O segundo caso, vamos receber uma lista porem vamos extrair em uma tupla o (head:tail) que seria o primeiro elemento da lista e tail o restante
-- então vamos criar uma recursão para sempre somar 1 e chamar novamente a função passando o tail. Portanto vamos percorrer toda lista somando 1 e quando a recursão 
-- chegar no ultimo elemento, vai ser executado o primeiro caso que retorna 0 e assim a recursão se encerra
sizeList [] = 0
sizeList (x : xs) = 1 + sizeList xs
