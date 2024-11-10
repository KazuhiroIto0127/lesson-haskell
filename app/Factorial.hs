module Main where

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

main :: IO ()
main = do
  putStrLn "Enter a number to calculate its factorial:"
  num <- readLn :: IO Int
  if num < 0
    then putStrLn "Factorial is not defined for negative numbers."
    else putStrLn $ "The factorial of " ++ show num ++ " is " ++ show (factorial num)
