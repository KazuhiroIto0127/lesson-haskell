import Data.Time.Clock (getCurrentTime, diffUTCTime)

-- フィボナッチ数を計算する関数
fib :: Int -> Int
fib n
    | n <= 1    = n
    | otherwise = fib (n - 1) + fib (n - 2)

main :: IO ()
main = do
    start <- getCurrentTime  -- 実行前の時刻を取得

    -- 5回ループしてfib(40)の結果を出力
    mapM_ (\_ -> print (fib 40)) ([1..5] :: [Int])

    end <- getCurrentTime  -- 実行後の時刻を取得
    let duration = diffUTCTime end start  -- 実行時間を計測
    putStrLn $ "Total execution time: " ++ show duration
