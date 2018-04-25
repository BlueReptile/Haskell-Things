{- 

MONADA
 um funtor m e duas transformações naturais return :: a -> m a 
 e join :: m(m a) -> m a são ditas uma Monada (m,return,join) (na categoria Hask)
 se satisfizer 
 
A)Elemento neutro  join . fmap return == fmap return . join == id 
B) Associatividade join . join == join . fmap join  -- Dsenhar a associatividade!
 
 
                  join
         mmm -------------> mm
fmap join |                  | join
         mm----------------> m
                  join
 
 
 

return :: Id ~> m
join :: mm ~> m


Uma monada é apenas um monoide na categoria dos (endo)funtores de hask.



-}