main = do 
    print $ myLast [1,2,3,4]
    print $ myLast ['a','b','r','y']

myLast :: [a] -> a
myLast [] = error "No last element"
myLast [x] = x
myLast (_:xs) = myLast xs