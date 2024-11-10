module Main where

main :: IO ()
main = do
  let xs = [1, 2, 3, 4] :: [Integer]
  let ys = [5, 6, 7, 9] :: [Integer]
  let cs = ['a', 'b', 'c'] :: [Char]
  putStrLn $ "x: " ++ show xs
  putStrLn $ "y: " ++ show ys
  putStrLn $ "c: " ++ cs

  putStrLn "------- zip --------------"
  putStrLn $ "zip x and y: " ++ show (zip xs ys)
  putStrLn $ "zip x and c: " ++ show (zip xs cs)

  putStrLn "------- manipulate tuples -----------"
  putStrLn $ "fst (1,5): " ++ show (fst (1 :: Integer, 5 :: Integer))
