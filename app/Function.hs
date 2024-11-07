module Main where

removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [c | c <- st, c `elem` ['A'..'Z']]

addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

factorial :: Integer -> Integer
factorial n = product [1..n]

sum' :: Num n => [n] -> n
sum' [] = 0
sum' (x:xs) = x + sum' xs

-- パターンマッチを使って表現
sayMe :: (Integral a) => a -> String
sayMe 1 = "One!"
sayMe 2 = "Two!"
sayMe 3 = "Three!"
sayMe 4 = "Four!"
sayMe 5 = "Five!"
sayMe _ = "Not between 1 and 5"

-- ガードを使って表現
sayMe' :: (Integral a) => a -> String
sayMe' x
  | x == 1 = "one!"
  | x == 2 = "two!"
  | otherwise = "not between 1 and 2"

-- Asパターン
capital :: String -> String
capital "" = "Empty string, whoops!"
capital str@(x:_) = "The first letter of " ++ str ++ " is " ++ [x]

main ::IO ()
main = do
  putStrLn $ removeNonUppercase "A Ha Ho hi"
  putStrLn $ show (addThree 1 2 3)
  putStrLn $ show (factorial 50)
  putStrLn $ show (sum' [1,2,3,5] :: Integer)
  putStrLn $ sayMe (1 :: Integer)
  putStrLn $ capital "Test"
  putStrLn $ sayMe' (2 :: Integer)
