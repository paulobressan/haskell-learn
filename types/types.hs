-- Criando tipos de dados

type Nome = String
type Idade = Int
type Linguagem = String

-- Criando uma estrutura de dados com typlas e os tipos
type Pessoa = (Nome, Idade, Linguagem)

pessoa :: Pessoa
pessoa = ("Paulo", 23, "Haskell")

-- Criando uma função para extrair o nome da tupla Pessoa
myFst :: Pessoa -> Nome
myFst (n, i, l) = n