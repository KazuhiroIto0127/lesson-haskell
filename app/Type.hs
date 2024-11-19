module Main where

newtype K = K Double deriving Show
newtype C = C Double deriving Show

convert :: C -> K
convert (C x) = K (x + 273.15)

data HTTPStatus = OK
                | Found
                | NotFound
                | ServiceUnavailable
                deriving (Show)

statusMessage :: HTTPStatus -> String
statusMessage OK                 = "Everything is fine."
statusMessage Found              = "The resource has been found."
statusMessage NotFound           = "The resource could not be found."
statusMessage ServiceUnavailable = "The service is unavailable right now."
    
main :: IO ()
main = do
    let tempC = C 10
    let tempK = K 0
    putStrLn $ show tempC
    putStrLn $ show tempK
    putStrLn $ show (convert tempC)
    putStrLn $ "Status: " ++ show OK ++ " -> " ++ statusMessage OK
    