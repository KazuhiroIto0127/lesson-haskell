module Main where

main :: IO ()
main = do
  putStrLn "Enter the first number:"
  num1 <- readLn :: IO Int
  putStrLn "Enter the second number:"
  num2 <- readLn ::IO Int
  let sumResult = num1 + num2
  putStrLn $ "The sum of number is: " ++ show sumResult
