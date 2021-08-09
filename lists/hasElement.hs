-- Verifica se um elemento pertence a uma lista
pertence :: [Int] -> Int -> Bool
pertence [] _ = False
pertence (x : xs) n
  | x == n = True
  | otherwise = pertence xs n

-- Retorna o maior elemento de uma lista de inteiros
maior :: [Int] -> Int
-- Se a lista conter um unico elemento
maior [x] = x
maior (x : xs)
  | x > maior xs = x
  | otherwise = maior xs

-- Se todos os numeros da lista forem pares retornaremos true se não false
todosPares :: [Int] -> Bool
todosPares [] = True
todosPares (x : xs)
  | mod x 2 == 1 = False
  | otherwise = todosPares xs
