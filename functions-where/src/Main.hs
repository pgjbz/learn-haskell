module Main where
import Control.Concurrent (yield)

len :: [a] -> Int
len [] = 0
len (_:xs) = 1 + len xs

isOdd :: Integral a => a -> Bool
isOdd n = n `mod` 2 == 1

square :: Num a => a -> a
square x = x * x

sqrt2degree :: (Ord a, Floating a) => a -> a -> a -> (a, a)
sqrt2degree a b c = 
  if delta < 0 
  then error "Negative delta"
  else (x1, x2)
  where
    x1 = ((-b) + sqDelta) / (2 * a) 
    x2 = ((-b) - sqDelta) / (2 * a)
    sqDelta = sqrt delta
    delta = b ^ (2 :: Int) - 4 * a * c

absolute :: (Num a, Ord a) => a -> a
absolute n = if n < 0 then (-n) else n

signalnum :: (Num a, Ord a) => a -> a
signalnum n
  | n < 0     = -1
  | n == 0    =  0
  | otherwise = 1

not :: Bool -> Bool
not True = False
not False = True

add :: (Eq a, Num a) => a -> a -> a
add 0 y = y
add x 0 = x
add x y = x + y

mult :: (Eq a, Num a) => a -> a -> a
mult 0 _ = 0
mult _ 0 = 0
mult 1 y = y
mult x 1 = x
mult x y = x * y

mult2 = \x y -> x * y

main :: IO ()
main = do
  putStrLn "hello world"

  --use stack gchi for eval this functions
