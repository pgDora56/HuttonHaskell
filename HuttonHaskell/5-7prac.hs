-- 1
hundSqSum :: Int
hundSqSum = sum [x^2 | x <- [1..100]]

-- 2
replicate' :: Int -> a -> [a]
replicate' n v = [v | _ <- [1..n]]

-- 3
pyths :: Int -> [(Int, Int, Int)]
pyths n = [(a, b, c) | a <- [1..n], b <- [1..n], c <- [1..n], a^2 + b^2 == c^2]
-- 3'
pyths' :: Int -> [(Int, Int, Int)]
pyths' n = [(a, b, c) | a <- [1..n], b <- [a..n], c <- [b..n], a^2 + b^2 == c^2]

-- 4
factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

perfects :: Int -> [Int]
perfects n = [x | x <- [1..n], sum (factors x) == 2 * x]


-- 5
s7s :: [(Int, Int)]
s7s = concat [[(x, y) | y <- [4..6]] | x <- [1..3]]

-- 6
find :: Eq a => a -> [(a, b)] -> [b]
find k t = [v | (k', v) <- t, k == k']

positions' :: Eq a => a -> [a] -> [Int]
positions' x xs = find x [(a,b) | (a,b) <- zip xs [0..n]]
                    where n = length xs - 1

-- 7
scalarproduct :: [Int] -> [Int] -> Int
scalarproduct xs ys = sum [x*y|(x, y) <- zip xs ys]

-- 8省略
