module Main where

main :: IO ()
main = do
  putStrLn "What is your name?"
  name <- getLine
  putStrLn $ "hello. " ++ name ++ "!!"
