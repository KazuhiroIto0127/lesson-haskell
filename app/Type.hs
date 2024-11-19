module Main where

newtype K = K Double deriving Show
newtype C = C Double deriving Show

convert :: C -> K
convert (C x) = K (x + 273.15)
    
main :: IO ()
main = do
    let tempC = C 10
    let tempK = K 0
    putStrLn $ show tempC
    putStrLn $ show tempK
    putStrLn $ show (convert tempC)
    