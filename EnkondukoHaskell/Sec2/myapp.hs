module Main(main) where 

import MyApp.SomeModule

main :: IO ()
main = do
    helloMyApp "Haskell"
    byeMyApp "Others"

-- import Params
--
-- main :: IO ()
-- main = do
--     putStrLn x
--     putStrLn y
--     putStrLn z
--
