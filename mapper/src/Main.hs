module Main where


mapper :: [Int] -> (Int -> Int) -> [Int]
mapper [] _ = []
mapper (x:xs) fun = 
  [fun x] ++ other
  where 
    other = mapper xs fun

main :: IO ()
main = do
  print (mapper [1, 2, 3, 4] (\x -> x ^ 2))
