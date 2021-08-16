-- A pilha é uma lista onde o ultimo elemento é o elemento do topo
-- O primeiro elemento a entrar na pilha é o ultimo a sair
-- last in = first out

push :: [Int] -> Int -> [Int]
push pilha x = pilha ++ [x]

-- remover o elemento que esta no topo que é o primeiro a sair
pop :: [Int] -> [Int]
pop [] = error "Pilha vazia"
pop (x : xs)
  | x == last (x : xs) = xs
  | otherwise = x : pop xs

-- Função para validar se a lista esta vazia
isEmpty :: [Int] -> Bool
isEmpty [] = True
isEmpty _ = False
