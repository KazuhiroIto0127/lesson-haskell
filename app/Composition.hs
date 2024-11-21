module Main where

digit :: Int -> Int
digit = length . show

main :: IO ()
main = do
    putStrLn $ show (digit 5102)