import Control.Arrow (ArrowChoice (right))

quicksort :: Ord t => [t] -> [t]
quicksort [] = []
quicksort (x : xs) = quicksort left ++ [x] ++ quicksort right
  where
    (left, right) = (filter (<= x) xs, filter (> x) xs)

main :: IO ()
main = print $ quicksort [1, 23, 455, 4, 45, 0, -1, 453, 70, 999, 2]