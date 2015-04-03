module Main where

-- |Generates the first n numbers in the fibonacci sequence
-- returned sequence is in reverse, of course, because cons
fib :: Int -> [Int]
fib 0 = [0]
fib 1 = [1,0]
fib n = sum (take 2 xs) : xs
    where xs = fib $ n - 1

main = do
  n <- getLine
  print $ fib $ read n
