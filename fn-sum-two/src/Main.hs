module Main where

test a b = a + 2 

-- never eval b arg

main = do
  print $test 1 2 
