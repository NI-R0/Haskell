-- A program to compute the nth fibonacci number of the sequence

fib :: (Num a, Num p, Ord a) => a -> p
fib n
  | n == 1 = 1
  | n == 2 = 1
  | n > 2 = fib (n -1) + fib (n - 2)
  | otherwise = 0

main :: IO ()
main = print $ fib 34