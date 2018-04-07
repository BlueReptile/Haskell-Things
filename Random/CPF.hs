module CPF where

import Data.Char
data CPF = Mascara String | Numero String deriving Show


validarCPF :: CPF -> String
validarCPF (Mascara x) = verifica(Numero [xs | xs <- x, notElem xs "-."]) 


verifica :: CPF -> String
verifica (Numero a) 
    | (passo1 == fromIntegral(digitToInt(a !! 9))) && (passo2 == fromIntegral(digitToInt(a !! 10)))  = "Valido"
    | ((passo1 == 10) && (fromIntegral(digitToInt(a !! 9)) == 0)) && (passo2 == fromIntegral(digitToInt(a !! 10))) = "Valido"
    | otherwise = "Invalido"
    where passo1 = ((fromIntegral(digitToInt(a !! 0)*10)+fromIntegral(digitToInt(a !! 1)*9)+fromIntegral(digitToInt(a !! 2)*8)+fromIntegral(digitToInt(a !! 3)*7)+fromIntegral(digitToInt(a !! 4)*6)+fromIntegral(digitToInt(a !! 5)*5)+fromIntegral(digitToInt(a !! 6)*4)+fromIntegral(digitToInt(a !! 7)*3)+fromIntegral(digitToInt(a !! 8)*2))*10) `mod` 11
          passo2 = ((fromIntegral(digitToInt(a !! 0)*11)+fromIntegral(digitToInt(a !! 1)*10)+fromIntegral(digitToInt(a !! 2)*9)+fromIntegral(digitToInt(a !! 3)*8)+fromIntegral(digitToInt(a !! 4)*7)+fromIntegral(digitToInt(a !! 5)*6)+fromIntegral(digitToInt(a !! 6)*5)+fromIntegral(digitToInt(a !! 7)*4)+fromIntegral(digitToInt(a !! 8)*3)+fromIntegral(digitToInt(a !! 9)*2))*10) `mod` 11