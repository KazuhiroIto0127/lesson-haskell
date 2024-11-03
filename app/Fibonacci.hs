module Main where

fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

main :: IO ()
main = do
  putStrLn "Enter a number to calculate its Fibonacci number:"
  num <- readLn :: IO Int
  if num < 0
    then putStrLn "Fibonacci is not defined for negative numbers."
    else putStrLn $ "The Fibonacci number at position " ++ show num ++ " is " ++ show (fibonacci(num))
