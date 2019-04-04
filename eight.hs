main = do
    print $ compress "aa"
    print $ compress "aaaabccaadeeee"

compress :: (Eq a) => [a] -> [a]
compress [x] = [x]
compress (x:xs)
    | x == (head xs) = compress xs
    | otherwise = [x] ++ compress xs 