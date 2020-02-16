import Data.List (intercalate)

data Dog = Dog deriving Show
data Cat = Cat deriving Show
data Human = Human String deriving Show

class Greeting a where 
    name :: a -> String
    hello :: a -> String
    hello _ = "..." -- helloのdefault関数
    bye :: a -> String 
    bye _ = "..."

class Greeting a => Laughing a where -- Greeting の child class
    laugh :: a -> String

instance Greeting Dog where
    name _ = "a dog"
    hello _ = "Bark!"

instance Greeting Cat where
    name _ = "a cat"
    hello _ = "Meow..."

instance Greeting Human where
    name (Human n) = n
    hello h = "Hi, I'm " ++ name h ++ "."
    bye _ = "See you."

instance Laughing Human where
    laugh _ = "Hahaha"

leaveWithLaugh :: Laughing a => a -> IO ()
leaveWithLaugh x = do
    putStrLn $ bye x
    putStrLn $ laugh x

liftGreet :: (a -> String) -> ([a] -> String)
liftGreet f = intercalate "\n" . map f

instance Greeting a => Greeting [a] where
    name = liftGreet name
    hello = liftGreet hello
    bye = liftGreet bye


sayHello :: Greeting a => a -> IO ()
sayHello x = putStrLn $ hello x

main :: IO ()
main = do
        sayHello Dog
        sayHello Cat 
        sayHello (Human "Takeshi")
        putStrLn $ laugh (Human "Takeshi")
        putStrLn $ bye Dog
        putStrLn $ bye Cat 
        putStrLn $ bye (Human "Takeshi")
        leaveWithLaugh $ Human "Takeshi"
        sayHello [Human "atsuko", Human "shingo"]

