type Nome = String

type Linguagem = String

type Universidade = String

data Pessoa = Programador Nome Linguagem | Aluno Nome Universidade
  deriving (Show)

programador = Programador "Paulo" "Haskell"

aluno = Aluno "Paulo" "Unip"

isProgramador :: Pessoa -> Bool
isProgramador (Programador _ _) = True
isProgramador _ = False

isAluno :: Pessoa -> Bool
isAluno (Aluno _ _) = True
isAluno _ = False