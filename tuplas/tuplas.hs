-- Tuplas é uma estrutura de dados que aceita N tipos

-- Essa função vai receber 2 tuplas(x,y) somar cada eixo e retorna um tupla com os eixos somado
func :: (Int, Int) -> (Int, Int) -> (Int, Int)
func (a, b) (c, d) = (a + c, b + d)

-- Extraindo dados de uma tupla
nomes :: (String, String, String)
nomes = ("Paulo", "Bruna", "Rita")

selecionaPrimeiro (x, _, _) = x

selecionaSegundo (_, y, _) = y

selecionaTerceiro (_, _, z) = z
