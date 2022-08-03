-- LISTEN
myLength :: Num p => [a] -> p
myLength [] = 0
myLength (hd : tl) = 1 + myLength tl

mySum :: Num p => [p] -> p
mySum [] = 0
mySum (hd : tl) = hd + mySum tl

myAppend :: t -> [t] -> [t]
myAppend x [] = x : []
myAppend x (hd : tl) = hd : (myAppend x tl)

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (hd : tl) = myAppend hd (myReverse tl)

main :: IO ()
main = do
  print "Hallo"