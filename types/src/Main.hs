module Main where
import Text.Read (Lexeme(String))

soma :: Int -> Int -> Int  --function type definition, receive two int, and return an int
soma a b = a + b

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

main = do
  let integer = 10 :: Int
  let integers = [1, 2, 3, 4 , 5] :: [Int] --list of integers
  let double = 10.0 :: Double
  let doubles = [1, 2, 3, 4, 5] :: [Double]
  let float = 20.0 :: Float
  let floats = [20.0 , 30.0, 40] :: [Float]
  let char = 'a' :: Char
  let chars = ['1', '2', '3', '4', '5'] :: [Char] --this is a string
  let string = "Camila" :: String
  let strings = ["1", "2", "3", "4", "5"] :: [String]
  let boolean = True :: Bool
  let booleans = [True, False, False, True] :: [Bool]
  let tuple = ("Haskell", True, 1) :: (String, Bool, Int)
  print integer
  print integers
  print double
  print doubles
  print char
  print chars
  print string
  print strings
  print boolean
  print booleans
  print tuple
  print (soma 1 2)
  print (factorial 4)

--haskell lazy determine type of variables