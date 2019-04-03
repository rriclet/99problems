main = do 
    print $ myLast [1,2,3,4]
    print $ myLast ['a','b','r','y']

myLast :: [a] -> a
myLast [] = error "No last element"
myLast list = last list
-- myLast (_:xs) = last xs