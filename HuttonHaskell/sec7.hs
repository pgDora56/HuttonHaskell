-- 7.8-4
--

dec2int :: [Int] -> Int
dec2int nums = foldl tenPlus 0 nums

tenPlus :: Int -> Int -> Int
tenPlus x y = x * 10 + y
