module Main where

len :: [a] -> Int
len [] = 0
len (_:xs) = 1 + len xs

isOdd :: Integral a => a -> Bool
isOdd n = n `mod` 2 == 1

square :: Num a => a -> a
square x = x * x

sqrt2degree :: Floating a => a -> a -> a -> (a, a)
sqrt2degree a b c = (x1, x2)
  where
    x1 = ((-b) + sqDelta) / (2 * a)
    x2 = ((-b) - sqDelta) / (2 * a)
    sqDelta = sqrt delta
    delta = b^2 - 4 * a * c

main :: IO ()
main = do
  putStrLn "hello world"
