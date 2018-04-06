 module Aula6 where
import Data.Monoid

-- Raddix

-- Polimofismo :kind

-- :kind Int 
-- > Int :: *                 - Kind 1

-- :kind []  
-- > Int :: * -> *            - Kind 2

-- :kind (,)                  - Kind 3
-- > (,) :: * -> * -> *

-- :kind (,,)                 - Kind 4
-- > (,,) :: * -> * -> * -> *

-- :kind Either
-- > Either :: * -> * -> *    - Kind 3

-- Prelude> :kind Num
-- Num :: * -> Constraint
-- Prelude> :kind Ord
-- Ord :: * -> Constraint


-- O tipo dupla é polimorfico de de kind * -> * pois ele possui 1 type parameter.
data Dupla a = Dupla a a -- Carrega dois do mesmo tipo
data Tripla a b = Tripla a a b -- Carrega dois do mesmo tipo e um de outro tipo (kind * -> * -> *)

data Curso = SI | ADS | GE | LOG | GP

-- instance Show Curso where --  é uma restrição porque so funciona com instancias de show.
--    show SI = "Aula de PHP"
--    show ADS = "Aula de COBOL"
--    show GE = "n sei"
--    show LOG = "caminhões"
--    show GP = "navios"
    
-- typeclass: prove funções que serão determinadas de acordo com um tipo.

-- instance Eq Curso where --  a não ser que voce verifique tudo n use isso. 
-- SI == ADS = True
-- ADS == SI = True
-- ADS == ADS = True
-- SI == SI = True
-- _ == _ = False
 
 -- class SimNao a where
 --    simnao :: a -> Bool
 
-- instance SimNao Curso where
-- simnao SI = True
-- simnao ADS = True
-- simnao _ = False
 
-- instance SimNao Bool where
-- simnao = id
 
-- instance SimNao Int where
-- simnao Int = even Int



instance Show a => Show (Dupla a) where -- neste caso x tem tipo a e y tb 
-- como sabemos que a pode ser mostrado na tela a expressão show x faz sentido
show (Dupla x y) = "O x eh: " ++ show x ++ " o y eh: " ++ show y


