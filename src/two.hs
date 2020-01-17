main = do
    print $ myButLast [1,2,3,4]
    print $ myButLast ['a'..'z']
    print $ myButLast ['a', 'b']
    print $ myButLast ['a']

myButLast :: [a] -> a
myButLast [x] = error "No second last element"
myButLast x = last $ init x