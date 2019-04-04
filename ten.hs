import Data.List

main = do
    print $ encode "aaaabccaadeeee"

encode :: (Eq a) => [a] -> [(Int,a)]
encode xs = [(length x, head x) | x <- group xs]