
module Monoid where
import Data.Monoid
--                  mconcat é fold para monoids.


data Ou = Ou Bool deriving Show

data Dupla a = Dupla a a deriving Show

instance Monoid Ou where
    mempty = Ou False
    mappend (Ou x) (Ou y) = Ou (x || y)
    
    -- no caso a é fixo, constraint
instance Monoid a => Monoid (Dupla a) where
    mempty = Dupla mempty mempty
    mappend (Dupla a b) (Dupla c d) = Dupla (a <> c) (b <> d) -- Não esquece o Sum.
    
    -- estudar exercicios da lista
    
    --entao monoide é a->a? n pode ter b?, pelo q entendi é isso msm

    
