-- Quando temos funções que recebe 2 parametros e vamos usar somente 1, podemos usar o _ para ignorar um parametro.

-- Definir o tipo da função, Espera como primeiro parametro
myAnd :: Bool -> Bool -> Bool
myAnd True True = True
myAnd False _ = False
myAnd _ False = False