main = do 
    print $ dupli [1, 2, 3]

dupli :: [a] -> [a]
dupli = concatMap (replicate 2)