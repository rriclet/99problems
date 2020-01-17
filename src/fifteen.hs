main = do 
    print $ repli "abc" 3

repli :: [a] -> Int -> [a]
repli xs n = concatMap (replicate n) xs