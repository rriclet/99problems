main = do
    print $ rotate ['a','b','c','d','e','f','g','h'] 3
    print $ rotate ['a','b','c','d','e','f','g','h'] (-2)

rotate :: [a] -> Int -> [a]
rotate xs n 
    | n > 0 = snd (splitAt n xs) ++ fst (splitAt n xs)
    | n < 0 = snd (splitAt (length xs + n) xs) ++ fst (splitAt (length xs + n) xs)
    | n == 0 = xs 