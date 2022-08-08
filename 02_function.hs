-- A program to map a natural number to itself (except for 2)

func :: (Num a, Num p, Ord a) => a -> p
func n
  | n == 1 = 1
  | n == 2 = 1
  | n > 2 = func (n -1) + func (n -2)
  | otherwise = 0

main :: IO ()
main = print $ func 2
