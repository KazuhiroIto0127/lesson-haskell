module Main where

main :: IO ()
main = do
  putStrLn "Enter a numbr:"
  num <- readLn :: IO Int
  if even num
    then putStrLn $ show num ++ " is even."
    else putStrLn $ show num ++ " is odd."
