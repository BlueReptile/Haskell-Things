{-# LANGUAGE TypeOperators,RankNTypes #-} -- Mas gente
module Aula9 where

type (~>) f g = forall a. f a -> g a -- Tipo de função para todos os tipos. 
-- kind (* -> *) -> (* -> *) -> *






-- Transformação Natural
{-
Um transformação natural entre dois funtores f e g 
é uma familia de funções etaa :: f a -> g a para todo tipo a.
cada uma dessas funções é chamada de componente da transformação
(etaInt :: f Int -> g Int), satisfazendo

para todas as funções h :: a -> b, temos 

    etab . fmap_f h == fmap_g h . etaa
    
    
                    etaa
         F a ------------------> G a
         |                     |
fmap_f h |          etab       | fmap_g h
         F b ------------------> G b 


-}


-- A transformação natural só ocorre graças ao polimorfismo parametrico.
safeHead1 :: [] a -> Maybe a -- Tranformação de Kind * -> * (Transformação natural, troca funtores)
safeHead1 [] = Nothing
safeHead1 (x:_) = Just x -- bem loko

safeHead2 :: [] ~> Maybe   -- very loko
safeHead2 [] = Nothing
safeHead2 (x:_) = Just x 

 
-- Colinha do arquivo do professor https://c9.io/romefeller hask0
--{-# LANGUAGE TypeOperators, RankNTypes #-}
{-
module Aula9 where

type (~>) f g = forall a. f a -> g a 

data Id a = Id a deriving Show

instance Functor Id where 
    fmap f (Id x) = Id (f x)

-- A TRANSFORMACAO NATURAL SOH OCORRE GRACAS AO POLIMORFISMO
-- PARAMETRICO

-- safeHead :: [] a -> Maybe a
safeHead :: [] ~> Maybe 
safeHead [] = Nothing
safeHead (x:_) = Just x

-- etaa 
safeHead' :: [String] -> Maybe String
safeHead' [] = Nothing
safeHead' (x:_) = Just x

-- h
tamanho :: String -> Int
tamanho x = length x

-- etab
safeHead'' :: [Int] -> Maybe Int
safeHead'' [] = Nothing
safeHead'' (x:_) = Just x


fora :: Maybe ~> [] 
fora Nothing = []
fora (Just x) = [x]

-- f = []
-- g = Id
ultimo :: [] ~> Id 
ultimo xs = Id (last xs)

-- f = Id 
-- g = []
coloca :: Id ~> []
coloca (Id x) = [x]


-}



