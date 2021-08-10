-- Ordenar lista de inteiros crescentemente

lista :: [Int]
lista = [5, 2, 10, 1, 9]

-- Para pegar o menor valor, vamos criar uma recursão até validando se o x é menor que todos os valores da lista
-- se não vamos criar novamente a recursão sem o head validando a posição 2 da lista e assim por diante
pegarMenorElemento :: [Int] -> Int
pegarMenorElemento [x] = x
pegarMenorElemento (x : xs)
  | x < pegarMenorElemento xs = x
  | otherwise = pegarMenorElemento xs

-- Remover o menor elemento da lista utilizando a função pegar menor elemento, se o head(x) for igual o menor elemento, vamos retornar
-- a lista sem o head, se não vamos criar uma recursão passando a lista sem o head e assim validar a segunda opção adiante
removerMenorElemento :: [Int] -> [Int]
removerMenorElemento [] = []
removerMenorElemento (x : xs)
  | x == pegarMenorElemento (x : xs) = xs
  | otherwise = x : removerMenorElemento xs

-- Função auxiliar que cria uma lista para adicionar os menores valores em ordem crescente. Recebera 2 listas, onde a primeira é a lista
-- acumulativa e a segunda a lista atual e assim criar uma recursão sempre chamando novamente a função passando a lista acumulativa concatenada
-- com o menor valor da lista atual como lista atual o retorno da lista sem o menor valor
ordenarAuxiliar :: [Int] -> [Int] -> [Int]
ordenarAuxiliar listaOrdenada [] = listaOrdenada
ordenarAuxiliar listaOrdenada (x : xs) =
  ordenarAuxiliar (listaOrdenada ++ [pegarMenorElemento (x : xs)]) (removerMenorElemento (x : xs))

ordenar :: [Int] -> [Int]
ordenar [] = []
ordenar lista = ordenarAuxiliar [] lista