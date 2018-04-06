module Ex34 where
    
    
tiravogal :: String -> String
tiravogal x = [xs | xs <- x, notElem xs "aeiouAEIOU"]
    
    
    