main = do 
    print $ split "abcdefghik" 3

split :: [a] -> Int -> ([a], [a])
split xs n = (take n xs, drop n xs)