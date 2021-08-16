-- Criando um grafo
-- Vertices que são os pontos de conexão com outros pontos
-- Aresta é a conexão de dois vertices, por exemplo vertice 1 se conecta ao verce 2, então vamos ter uma tupla contendo essa conexão que forma a aresta
-- E por fim o grafo contem uma lista de arestas

type Vertice = Int

type Aresta = (Vertice, Vertice)

type Grafo = [Aresta]

{-
Ilustração do grafo abaixo

          1
    2   3   4   5
   6 7      8   9
-}
grafo :: Grafo
grafo =
  [ (1, 2),
    (1, 3),
    (1, 4),
    (1, 5),
    (2, 6),
    (2, 7),
    (4, 8),
    (5, 9)
  ]

-- adjacentes são os nó "visinho" de um vertice,
-- ou seja, no grafo a cima, quando passamos um Vertice, vamos pegar todos os outros vertice que se conectam a ele
-- Por exemplo, 1 = [2,3,4,5]
adjacentes :: Grafo -> Vertice -> [Vertice]
adjacentes [] _ = []
adjacentes ((a, b) : c) vertice
  | a == vertice = b : adjacentes c vertice
  | b == vertice = a : adjacentes c vertice
  | otherwise = adjacentes c vertice
