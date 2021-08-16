-- Para definir uma arvore binaria, temos que ter 2 construtores de dados
--        1
--     2     3
--    4  5  6  nulo

data ArvoreBinaria = Nulo | No Int ArvoreBinaria ArvoreBinaria
    deriving (Show)

arvore :: ArvoreBinaria
arvore = No 1 
    (No 2 
        (No 4 Nulo Nulo) (No 5 Nulo Nulo)) 
    (No 3 
        (No 6 Nulo Nulo) Nulo)


-- Percorrer a arvore binaria em order começando recursivamente da esquerda para direita
percorrerArvoreEmOrdem :: ArvoreBinaria -> [Int]
percorrerArvoreEmOrdem Nulo = []
percorrerArvoreEmOrdem (No numero esquerda direita) = percorrerArvoreEmOrdem esquerda ++ [numero] ++ percorrerArvoreEmOrdem direita