msort :: Ord a => [a] -> [a]
msort [] = []
msort (x:[]) = [x]
msort s    = merge ((msort $ fst sep), (msort $ snd sep))
            where sep = halve s

merge :: Ord a => ([a], [a]) -> [a]
merge ([], r) = r
merge (l, []) = l
merge ((l:ls), (r:rs)) = if l < r 
                            then l:(merge (ls,(r:rs)))
                            else r:(merge ((l:ls),rs))

halve :: [a] -> ([a], [a])
halve s = ((take lh s), (drop lh s))
            where lh = div (length s) 2
