module Main where

removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [c | c <- st, c `elem` ['A'..'Z']]

main ::IO ()
main = do
  putStrLn $ removeNonUppercase "A Ha Ho hi"
