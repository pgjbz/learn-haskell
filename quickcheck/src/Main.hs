module Main where

import Test.QuickCheck
import Test.QuickCheck.Property (Prop)
import Data.List

qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x:xs) = qsort lhs ++ [x] ++ qsort rhs
  where
      lhs = [e | e <- xs, e < x]
      rhs = [e | e <- xs, e >= x]

prop_idempotencia :: Ord a => [a] -> Bool
prop_idempotencia xs = qsort (qsort xs) == qsort xs

prop_length :: Ord a => [a] -> Bool
prop_length xs = length (qsort xs) == length xs

prop_minimum :: Ord a => [a] -> Property 
prop_minimum xs = not (null xs)
    ==> head (qsort xs) == minimum  xs

prop_model :: Ord a => [a] -> Bool
prop_model xs = qsort xs == sort xs

-- $> quickCheck prop_minimum

main :: IO ()
main = do
  putStrLn "Hello World"
