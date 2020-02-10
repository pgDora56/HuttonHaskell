module Main (main) where
import System.Environment

main :: IO()
main = do
    let title = "Currect User: "
    putStr title
    -- user <- getEnv "USERNAME" -- SystemからUSERNAMEを取得する
    -- putStr title 
    getEnv "USERNAME" >>= putStrLn

