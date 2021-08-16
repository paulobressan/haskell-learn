-- Todas lista tem o head e o tail

-- O primeiro caso da função é se a for uma list vazia vamos retornar que o tamanho é 0
-- O segundo caso, vamos receber uma lista porem vamos extrair em uma tupla o (head:tail) que seria o primeiro elemento da lista e tail o restante
-- então vamos criar uma recursão para sempre somar 1 e chamar novamente a função passando o tail. Portanto vamos percorrer toda lista somando 1 e quando a recursão
-- chegar no ultimo elemento, vai ser executado o primeiro caso que retorna 0 e assim a recursão se encerra
tamanhoDaLista :: [t] -> Int
tamanhoDaLista [] = 0
tamanhoDaLista [x] = 1
tamanhoDaLista (x : xs) = 1 + tamanhoDaLista xs

-- Criando uma nova lista e aplicando algumas condições
novaLista :: [Int]
novaLista = [x | x <- [1 .. 10], x > 5]

type Nome = String

type Idade = Int

type Pessoa = (Nome, Idade)

pegarIdade :: Pessoa -> Idade
pegarIdade (_, i) = i

pegarNome :: Pessoa -> Nome
pegarNome (n, _) = n

lista :: [Pessoa]
lista = [("Paulo", 23), ("Bruna", 21), ("Rita", 58)]

-- Criando uma nova lista de pessoas que contem idade acima de 25 anos
novaListaDePessoas :: [Pessoa]
novaListaDePessoas = [pessoa | pessoa <- lista, pegarIdade pessoa > 25]

-- recebe uma lista de Pessoa e imprime todos os nomes e idades
imprimirLista :: [Pessoa] -> IO ()
imprimirLista [] = return ()
imprimirLista (x : xs) = do
  putStrLn (pegarNome x ++ " - " ++ show (pegarIdade x))
  imprimirLista xs

-- tamanho da lista
tamanhoDaListaDePessoas :: Int
tamanhoDaListaDePessoas = length lista

-- exemplo de concatenar manual
concatenar :: [a] -> [a] -> [a]
concatenar [] y = y
concatenar x [] = x
concatenar (x : xs) y = x : concatenar xs y


type Registro = Pessoa

type DB = [Registro]

db :: DB
db = [("Paulo", 23), ("Bruna", 23)]

pegarNomes :: DB -> [String]
pegarNomes [] = []
-- Desmembrar o head da lista de tuplas em um tupla
pegarNomes ((nome, _) : xs) = nome : pegarNomes xs