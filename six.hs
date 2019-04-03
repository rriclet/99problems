main = do
    print $ isPalindrome [1,2,3]
    print $ isPalindrome "madamimadam"
    print $ isPalindrome [1,2,4,8,16,8,4,2,1]

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome [] = False
isPalindrome [x] = True
isPalindrome [x,y] = True
isPalindrome (x:xs) = (isPalindrome $ init xs) && (x == last xs)

-- From wiki.haskell.org
-- isPalindrome xs = xs == (reverse xs)