halve :: [a] -> ([a], [a])
halve v = ((take l v), (drop l v))
    where l = (length v) `div` 2

safetailA :: [a] -> [a]
safetailA v = if (length v) == 0 then [] else tail v

safetailB :: [a] -> [a]
safetailB v
    | (length v) == 0 = []
    | otherwise       = tail v

safetailC :: [a] -> [a]
safetailC [] = []
safetailC v  = tail v

or':: Bool -> Bool -> Bool
or' True True   = True
or' True False  = True
or' False True  = True
or' False False = False

mult :: Int -> Int -> Int -> Int
mult = \x -> (\y -> (\z -> x * y * z))

