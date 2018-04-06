module Ex316 where 

data Numero = Ok Double | Erro String deriving Show

divNum :: Numero -> Numero -> Numero
divNum (Ok x) (Ok 0) = Erro "0 nao e divisivel"
divNum (Ok x) (Ok y) = (Ok (x / y))