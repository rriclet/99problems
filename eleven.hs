import Data.List

main = do
    print $ encodeModified "aaaabccaadeeee"

data ListItem a = Single a | Multiple Int a
    deriving (Show)

encodeModified :: (Eq a) => [a] -> [ListItem a]
encodeModified xs = [if (length x) == 1 then Single (head x) else Multiple (length x) (head x) | x <- group xs]