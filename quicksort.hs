import Control.Arrow (ArrowChoice (right))
import Distribution.Parsec (zeroPos)

quicksort :: Ord t => [t] -> [t]
quicksort [] = []
quicksort (x : xs) = quicksort left ++ [x] ++ quicksort right
  where
    (left, right) = (filter (<= x) xs, filter (> x) xs)

------------------------------------

qs :: Ord a => [a] -> [a]
qs [] = []
qs (x : xs) = qs ys ++ [x] ++ qs zs
  where
    ys = [a | a <- xs, a <= x]
    zs = [a | a <- xs, a > x]

------------------------------------

main :: IO ()
main = do
  print $ quicksort [1, 23, 455, 4, 45, 0, -1, 453, 70, 999, 2]
  print $ qs [123, 3213, -4, 23 + 1, 3]
