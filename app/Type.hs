module Main where

-- type --
type Name = String
type Age = Int
type Person = (Name, Age)

-- newtype --
newtype K = K Double deriving Show
newtype C = C Double deriving Show

convert :: C -> K
convert (C x) = K (x + 273.15)

-- data --
data HTTPStatus = OK
                | Found
                | NotFound
                | ServiceUnavailable
                deriving (Show)

statusMessage :: HTTPStatus -> String
statusMessage OK                 = "Everything is fine."
statusMessage Found              = "The resource has been found."
statusMessage NotFound           = "The resource could not be found."
statusMessage ServiceUnavailable = "The service is unavailable right now."

-- 再帰型
data Nat = Zero | Succ Nat deriving Show

toInt :: Nat -> Int
toInt Zero = 0
toInt (Succ n) = 1 + toInt n

main :: IO ()
main = do
    -- type
    let person :: Person
        person = ("Alice", 30)
    putStrLn $ "name: " ++ fst person ++ ", age: " ++ show (snd person)
    -- newtype
    let tempC = C 10
    let tempK = K 0
    putStrLn $ show tempC
    putStrLn $ show tempK
    putStrLn $ show (convert tempC)
    -- data
    putStrLn $ "Status: " ++ show OK ++ " -> " ++ statusMessage OK
    -- 再起
    let two = Succ (Succ Zero)
    print (toInt two)
    