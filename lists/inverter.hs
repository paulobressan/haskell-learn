{-
Função que recebe uma lista e retorna o inverso da lista

Exemplo de entrada: [1,2,3]
Exemplo de saida: [3,2,1]
-}

-- FORMA VERBOSA: Usando uma função auxiliar para inverter a lista
inverterListaAux :: [t] -> [t] -> [t]
-- Se passar uma lista vazia, vamos retornar a lista vazio
inverterListaAux [] listaInvertida = listaInvertida
-- Se a lista for valida, vamos extrair (x:xs) da lista que vai ser invertida e em seguida criar uma
-- recursão passando o tail da lista que vai invertida e a lista acumuladora vamos passar ela
-- concatenando com o head da lista atual.
inverterListaAux (x : xs) listaInvertida = inverterListaAux xs listaInvertida ++ [x]

inverterLista :: [t] -> [t]
-- Se passar uma lista vazia, vamos retornar outra lista vazia
inverterLista [] = []
-- Se a lista for valida, vamos chamar a função inverterListaAux passando a lista e uma nova lista
-- para acumular os head da lista atual acontrario
inverterLista lista = inverterListaAux lista []

inverterListaSlim :: [t] -> [t]
inverterListaSlim [] = []
inverterListaSlim (x : xs) = inverterListaSlim xs ++ [x]