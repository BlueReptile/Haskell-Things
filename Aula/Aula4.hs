module Aula4 where

data Status = Magro | Saudavel | Gordo deriving Show
-- Recursividade
-- Fatorial

fat :: Int -> Int
fat 0 = 1
fat 1 = 1
fat n
    | n <= 1 = 1  -- os Guards servem para checar varias condições booleanas em order, a primeira que for verdadeira retornara
    | otherwise = n * fat(n - 1) --  ele calcula a espressão correpondente indo ate o otherwise caso as outras forem falsas
--                                   caso tenha um buraco em seu raciocinio vira uma função parcial.

modulo :: Double -> Double
modulo x
    | x >= 0 = x
    | x < 0 = -x

imc :: Double -> Double -> Status
imc peso altura
    | calculo < 18 = Magro
    | calculo < 25 = Saudavel
    | otherwise = Gordo
    where 
        calculo = peso / (altura*altura)

eliminaVogal :: String -> String
eliminaVogal [] = []  -- Lista Vazia
eliminaVogal (x:xs) -- um elemento, x head, xs tail
    | elem x "AEIOUaeiou" = eliminaVogal xs
    | otherwise = x : eliminaVogal xs
-- eliminaVogal (x:y:zs) -- dois elementos ou mais x e y são elementos e zs é o tail
-- eliminaVogal (a:b:_) -- dois elementos, mas ignorando o tail
-- eliminaVogal (a:b:[]) -- o mesmo de cima, mas tail vazio
-- eliminaVogal (x:_:w:_:t:ts) -- cinco ou mais elementos ignorando o segundo e o quarto.

-- ELIMINE OS NUMEROS PARES DE UMA LISTA USANDO RECURSÃO

elimPar :: [Int] -> [Int]
elimPar [] = []
elimPar (x:xs)
    | ((mod x 2)==0) = elimPar xs
    | otherwise = x : elimPar xs
    
-- Currying, Criar novas funções a partir de outras conhecidas
-- para isto ocorrer basta passar menos argumentos do que foi esperado  --  Variar as entradas de um tipo.
somar :: Int -> Int -> Int -> Int
somar a b c = a+b+c


-- lambda função sem corpo, função anonima
-- (\x -> 2*x) 2 -- sem corpo
-- dobro x = (x -> 2*x) -- com corpo

-- High-order function
-- uma função é um ente de primeira classe
-- é tratada como um valor qualquer
--posso passar uma função via parametro ou retorna-la
foo :: (Int -> Int) -> Int
foo f = 1 + f 5

somaCurry :: Int -> (Int -> Int)
somaCurry x = \y -> x + y



-- Ex - 3.16, 3.17, 3.18