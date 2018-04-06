module Ex317 where 

data Cripto = Mensagem String | Cifrado String | Erro String deriving Show


encriptar :: Cripto -> Cripto
encriptar (Cifrado x) = Erro "Erro, ja e uma Cifra"
encriptar (Mensagem x) = (Cifrado(map succ x))


decriptar :: Cripto -> Cripto
decriptar (Mensagem x) = Erro "Erro, ja e uma Mensagem"
decriptar (Cifrado x) = (Mensagem(map pred x))


------ Ex 3.18

encriptl :: [Cripto] -> [Cripto]
encriptl [] = []
encriptl (xs) = [encriptar x | x <- xs]


decriptl :: [Cripto] -> [Cripto]
decriptl [] = []
decriptl (xs) = [decriptar x | x <- xs]

