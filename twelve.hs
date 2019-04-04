import Data.List

main = do
    print $ decodeModified 
        [Multiple 4 'a',Single 'b',Multiple 2 'c',
        Multiple 2 'a',Single 'd',Multiple 4 'e']

data ListItem a = Single a | Multiple Int a
    deriving (Show)

decodeModified :: [ListItem a] -> [a]
decodeModified = concatMap decodeHelper
    where 
        decodeHelper (Single x) = [x]
        decodeHelper (Multiple n x) = replicate n x 