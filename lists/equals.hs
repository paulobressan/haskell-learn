{-
Função para validar se duas listas são iguais
 - Mesmo numeros de elementos
 - Possuirem os mesmos elementos
 - Os elementos estarem na mesma posição
-}

-- A função compararListas cria uma recursão para validar se a cada função o head é igual
-- o da segunda lista usando guarda. Se for igual vamos chamar a função novamente passando
-- o tail. E se for diferente os head da lista vai cair no otherwise retornando false.
-- E quando a lista for finalizada vai cair no [] [] e retornar True
compararListas :: [Int] -> [Int] -> Bool
compararListas [] [] = True
compararListas [] _ = False
compararListas _ [] = False
compararListas (x : xs) (y : ys)
  | x == y = compararListas xs ys
  | otherwise = False