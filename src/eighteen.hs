main = do
    print $ slice ['a','b','c','d','e','f','g','h','i','k'] 3 7

slice :: [a] -> Int -> Int -> [a]
slice xs s f = take (f-s+1) $ drop (s-1) xs