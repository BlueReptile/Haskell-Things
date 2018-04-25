module Cobol where


foo' :: Int -> Maybe Int
foo' z = do
        x <- Just z
        y <- Just (2*x)
        return (x+y+1)
        
        
        
        