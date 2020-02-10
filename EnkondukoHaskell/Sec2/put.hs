putW, putX :: IO ()
putW = putStrLn "W"
putX = putStrLn "X"


makePutY, makePutZ :: IO (IO ())
makePutY = return $ putStrLn "Y"
makePutZ = return $ putStrLn "Z"


main :: IO ()
main = do
    let w = putW
        x = putX

    w

    putY <- makePutY
    putZ <- makePutZ

    putZ

    print $ mocho ((5,2), True)
    print $ mocho ((5,2), False)
    print $ mocho ((5,0), False)
    print $ mocho ((5,0), True)



mocho :: ((Int, Int), Bool) -> (Int, Int)
mocho x = case x of 
            (x'@(_, 0), True) -> x'
            (   (n, m), _)    -> (2 * n, 2 * m)

