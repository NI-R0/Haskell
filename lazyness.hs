first :: Int -> Int -> Int
first x y = x

-- Expression 3+5 should not be calculated due to the lazy behaviour of Haskell
main :: IO ()
main = print $ first 13 (3 + 5)