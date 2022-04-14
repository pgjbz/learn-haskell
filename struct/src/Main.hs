module Main where

data Person = Person { name :: String
                     , age :: Int
                     } deriving Show

main :: IO ()
main = do
  let person = Person { name = "Paulo", age = 22 }
  putStrLn $ name person
  print $ age person
  let s = person {age = 51}
  print s
