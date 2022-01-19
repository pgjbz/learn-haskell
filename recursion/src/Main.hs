module Main where

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

mdc :: Int -> Int -> Int
mdc a 0 = a
mdc a b = mdc b (mod a b) --tail call

sumList :: Num a => [a] -> a
sumList [] = 0
sumList (x:xs) = x + sumList xs 

size :: [a] -> Int
size [] = 0
size (_:xs) = 1 + size xs

productList :: Num a => [a] -> a
productList [] = 1
productList (x: xs) = x * productList xs

qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x:xs) =
  qsort minors ++ [x] ++ qsort biggers
  where
    minors = [e | e <- xs, e < x]
    biggers = [e | e <- xs, e >= x]

main :: IO ()
main = do
  print (factorial 3)
  print (mdc 48 18)
  print (sumList [1,2,3])
  print (size [1,2,3,4,5,6])
  print (productList [1,2,3])
  print (qsort [2,4,7,5,9,1,0,3,10,8])
