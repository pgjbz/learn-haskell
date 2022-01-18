module Main where
import GHC.Real (infinity)
import Data.Foldable (Foldable(fold))


index :: [a] -> Int -> a
index xs i = head (drop i xs)

factorial :: Integer -> Integer
factorial 0 = 1
factorial x = product [2..x] 

main = do
  let list = [0, 1, 2, 3, 4]
  --this thing above is the same of below, but this thig above is the sintaxe sugar
  let list2 = 0 : 1 : 2 : 3 : 4 : []
  let listRange = [1..10]
  let infinityList = [1..]
  let onlyOdd = [1, 3..] --check previews and calculate next
  -- let onlyPrime = [1, 2, 3, 5, 7, 11..] --parse error
  let xs = [1, 3..201]
  print list
  print list2
  print listRange
  print (take 10 infinityList)
  print (take 10 onlyOdd)
  print (xs !! 0) --get index, but lists in haskell is linked list
  print (head xs) --get first element of list
  print (tail xs) --return all elements - head
  -- print (length  infinityList) --work forever
  print (sum xs)
  print (product xs)
  print (index xs 1)
  print (factorial 10)
  print (factorial 0)

