-- A program to calculate the factorial of a given number

fac :: (Ord p, Num p) => p -> p
fac n
  | n <= 1 = 1
  | otherwise = fac (n -1) * n

main :: IO ()
main = print (fac 10)