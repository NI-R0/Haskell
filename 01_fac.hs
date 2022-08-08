fac n
  | n <= 1 = 1
  | otherwise = fac (n -1) * n

main :: IO ()
main = print (fac 10)

--putStrLn