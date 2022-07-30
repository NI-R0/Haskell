ggt n m
  | n == m = n
  | n > m = ggt (n - m) m
  | otherwise = ggt (m - n) n

main :: IO ()
main = print $ ggt 17 23