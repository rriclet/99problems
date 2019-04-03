main = do
    print $ elementAt [1,2,3] 2
    print $ elementAt "haskell" 5
    print $ elementAt "haskell" 12

elementAt :: [a] -> Int -> a
elementAt x i
    | length x >= (i - 1) = x !! (i - 1)  
    | otherwise = error "Index out of bounds"