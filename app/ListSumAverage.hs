module Main where

import Data.List (genericLength)

-- リストの合計をだす
sumList :: [Int] -> Int
sumList = sum

averageList :: [Int] -> Double
averageList x = fromIntegral (sum x) / genericLength x

main :: IO ()
main = do
  putStrLn "Enter numbers separated by spaces:"
  input <- getLine
  let numbers = map read (words input) :: [Int]
  putStrLn $ "The sum of the numbers is: " ++ show (sumList numbers)
  putStrLn $ "The average of the numbers is: " ++ show (averageList numbers)
