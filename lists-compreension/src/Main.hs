module Main where

myConcat xss = [x | xs <- xss, x <- xs]
size :: Num a => [t] -> a
size xs = sum [1| _ <- xs]
dividers :: Integral a => a -> [a]
dividers n = [x | x <- [1..n], n `mod` x == 0]
isPrime n = [x | x <- [1..n], n `mod` x == 0] == [1, n]

pairs xs = zip xs (tail xs)

isSorted :: Ord a => [a] -> Bool
isSorted xs = null [() | (p, s) <- pairs xs, p > s]
main = do
  let list = [x | x <- [0, 2..100], x `mod` 6 == 0] 
  {-
    x pertence aos numeros pares de 0 a 100 tal que x seja divisivel por 6
  -}
  let list2 = [x ^ 2 :: Int | x <- [0, 2..100], x `mod` 6 == 0]
  --           use elements | generate elements| Filter elements
  let list3 = [(x, y) | x <-[0..5], y <-[11..16]] --produto cartesiano
  let listConcat = concat [[1, 2, 4], [6,7,8]]
  print list
  print list2
  print list3
  print listConcat
  print (myConcat [[1, 2, 4], [6,7,8]])
  print (size [1,2,3,4,5])
  print (dividers 100)
  print (isPrime 1)
  print (isPrime 3)
  print (isPrime 9)
  print ([x | x <- [2..100], isPrime x])
  print (pairs [10,20,30,40])
  print (isSorted [1..10])
  print (isSorted [1,3,2,4])
