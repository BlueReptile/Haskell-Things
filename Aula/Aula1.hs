module Aula1 where 

dobro x = 2*x

somar x y z = x+y+z

-- :l - load :r - reload

conc xs ys = xs++ys

a = 7

x = x + 1

pin = [x|x<-[1..40], mod x 4 /= 0]

-- criar tipos Aula 3
-- data constructor/construtor, dia é um tipo
data Dia = Domingo | Segunda | Terca | Quarta | Quinta | Sexta | Sabado deriving Show -- são chamados de value constructors ou valores simplesmente.
data Correncia = Brl | Usd deriving Show
data Moeda = Moeda Double Correncia deriving Show
data Funcionario = Funcionario{
funcionarioNome :: String,     -- Atribuir nomes, tambem funciona como um "gets"
funcionarioSalario :: Moeda    -- chamado Record Syntax, funciona como função de projeção
}deriving Show
data Curso = ADS | SI | GE | LG | GP deriving Show
data Aluno = Aluno{
    alunoNome :: String,
    alunoIdade :: Int,
    alunoCurso :: Curso
}deriving Show

agenda :: Dia -> String
agenda Segunda = "Wake up"                  --  Patter matching desconstroe o tipo da entrada nos 
agenda Terca = "Dia de Haskell"             --  dando uma forma de acesso aos seus valores
agenda Quarta = "Dia de libertadores"       --  sendo assim ele "imita" como um case
agenda Quinta = "Dia do muro"
agenda Sexta = "Dia de maldade"
agenda Sabado = "Dia do FUCKING ABYSS"
agenda Domingo = "Dia do Faustão"


-- Ex Fazer a função toNUm que recebe um dia e devolve um numero
-- e fazer toDIa, que recebe um numero e devolve o dia.

toNum :: Dia -> Int
toNum Domingo = 1
toNum Segunda = 2           
toNum Terca = 3
toNum Quarta = 4
toNum Quinta = 5
toNum Sexta = 6
toNum Sabado = 7


-- Função agora é total, cobre todas as possibilidades.
toDia :: Int -> Either String Dia
toDia 1 = Right Domingo
toDia 2 = Right Segunda   
toDia 3 = Right Terca
toDia 4 = Right Quarta
toDia 5 = Right Quinta
toDia 6 = Right Sexta
toDia 7 = Right Sabado
toDia _ = Left  "Erro"


-- Crie o tipo moeda que possua os value constructors
-- Real e Dollar. Crie uma função conversao que receba
-- um valor e uma moeda e retorne o valor
-- da moeda convertida

converter :: Double -> Correncia -> (Double, Correncia)
converter x Usd = (x*3.20, Brl) 
converter x Brl = (x*0.31, Usd)

aumentar :: Funcionario -> Funcionario 
aumentar (Funcionario nome(Moeda valor corr)) = (Funcionario nome(Moeda (1.3*valor) corr))


-- Crie um tipo que possua Value Constructors Representando os 5 cursos da fatec
-- crie um tipo aluno que possua campo nome, idade e cursos
-- funções transferirads    tranfere o aluno para ads
-- Aniversario atualiza a idade em uma unidade

tranfereads :: Aluno -> Aluno
tranfereads (Aluno alunoNome alunoIdade (Curso alunoCurso )) = (Aluno alunoNome, alunoIdade(Curso (alunoCurso = ADS)))


