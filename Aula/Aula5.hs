-- High(Grand) Order function 
-- ($) :: (a -> b) -> a -> b  -- Função Infixa e polimórfica
-- Polimorfismo parametrico
-- A função deve ser implementada p/ qualquer tipo tipo A e B sem saber qual valor os parametros vão assumir (esconde o tipo)


-- dobro $ length "fatec"


-- (|>) :: a -> (a -> b) -> b   -- :thinking: , x f() e retorna  f(x) --  infix |> 9

--                                                           f     
-- (.) :: (b -> c) -> (a -> b) -> a -> c                   A---B
-- (.) g f x = g $ f x  -- composição de funções            \  |
-- (.) g f x = g(f(x))                                   f.g \ | g
-- VAI CAIR NA PROVA                                          \|
--                                                             C

-- Trio descolado da programação funcional
-- 1 -> map :: (a -> b) -> [a] -> [b] -- works like distribuitiva feat functions 
-- 2 -> filter :: (a -> bool) -> [a] -> [a] -- Filtra uma função booleana de uma lista -- filter(\x -> notElem x "AEIOUaeiou") "FATEC"
-- 3 -> foldl :: (b -> a -> b) -> b -> [a] -> b -- junta todos os elementos da lista (contadores e acumuladores)
--            operação ou função



