module Aula7 where

data Dupla a = Dupla a a deriving Show


-- Funtor restringe kind * -> *   (kind 2)
instance Functor Dupla where
    fmap f (Dupla x y) = Dupla (f x) (f y)
    -- funtor entra dentro do tipo a
    -- Tipos de Funtores\
    --                   |-Maybe
    --                   |-Lista
    --                   |-IO
    
    
    -- Proxima aula é simulado, estudar jui
    

    