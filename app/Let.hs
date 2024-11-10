module Main where

-- 円柱の表面積を求める(高さと半径にもとづく)
cylinder :: (RealFloat a) => a -> a -> a
cylinder r h =
  let sideArea = 2 * pi * r * h
      topArea = pi * r ^ (2 :: Integer)
   in sideArea + 2 * topArea

calcDensities :: (RealFloat a) => [(a, a)] -> [a]
calcDensities xs = [density | (m, v) <- xs, let density = m / v]

main :: IO ()
main = do
  putStrLn $ show (cylinder (5 :: Double) (3 :: Double))
  putStrLn $ show (let a = (9 :: Integer) in a + 1)
  putStrLn $ show (calcDensities [(5 :: Double, 10 :: Double)])
