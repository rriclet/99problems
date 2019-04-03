main = do
    print $ myLength [123, 456, 789]
    print $ myLength "How many characters ?"

myLength :: [a] -> Int
myLength [x] = 1
myLength (_:xs) = 1 + myLength xs