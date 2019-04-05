main = do
    print $ dropEvery "abcdefghik" 3

dropEvery :: [a] -> Int -> [a]
dropEvery xs i = dropEveryEach xs i i 

dropEveryEach :: [a] -> Int -> Int -> [a]
dropEveryEach [] i n = []
dropEveryEach (x:xs) i n
    | i == 1 = dropEveryEach xs n n
    | otherwise = [x] ++ dropEveryEach xs (i - 1) n