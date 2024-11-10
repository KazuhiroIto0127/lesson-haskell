module Main where

main :: IO ()
main = do
  let xs = [1, 2, 3, 4] :: [Integer]
  let ys = [5, 6, 7, 9] :: [Integer]
  let cs = ['a', 'b', 'c'] :: [Char]
  putStrLn $ "x: " ++ show xs
  putStrLn $ "y: " ++ show ys
  putStrLn $ "c: " ++ cs

  putStrLn "------- list join etc --------------"
  putStrLn $ "c[1]: " ++ show (cs !! 1)
  putStrLn $ "x + y: " ++ show (xs ++ ys)
  putStrLn $ "0 join x: " ++ show (0 : xs)
  putStrLn $ "x > y: " ++ show (xs > ys)

  putStrLn "-------- list function --------------"
  putStrLn $ "head x: " ++ show (head xs)
  putStrLn $ "tail x: " ++ show (tail xs)
  putStrLn $ "take x: " ++ show (take 2 xs)
  putStrLn $ "length x: " ++ show (length xs)
  putStrLn $ "reverse x: " ++ show (reverse xs)
  putStrLn $ "minimum x: " ++ show (minimum xs)
  putStrLn $ "sum x: " ++ show (sum xs)
  putStrLn $ "product x: " ++ show (product xs)
  putStrLn $ "4 include? x: " ++ show (4 `elem` xs)

  putStrLn "---------- list range ----------------"
  putStrLn $ "[1..20]: " ++ show ([1 .. 20] :: [Integer])
  putStrLn $ "[2,4..20]: " ++ show ([2, 4 .. 20] :: [Integer])

  putStrLn "---------- list comprehension ----------------"
  putStrLn $ "[x*2 | x <- xs]: " ++ show ([x * 2 | x <- xs])
  putStrLn $ "[x*2 | x <- xs]: " ++ show ([x * 2 | x <- xs, x * 2 >= 6])
  putStrLn $ "[ x*y | x <- xs, y <- ys, x*y > 10]: " ++ show ([x * y | x <- xs, y <- ys, x * y > 10])
